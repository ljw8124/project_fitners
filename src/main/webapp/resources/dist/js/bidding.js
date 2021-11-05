const getBiddingList = async (ano) => {

    const response = await axios.get(`/bidding/list/${ano}`)
    return response.data
}