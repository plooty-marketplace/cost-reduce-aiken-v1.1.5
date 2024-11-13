import aiken.collection.{Collection, Dictionary}

type NFTListing = {
    seller: Address,
    price: Integer
}

// Storing active listings in a dictionary by token ID
let listings: Dictionary<NFTListing> = Dictionary.empty()

fun addListing(tokenId: Integer, listing: NFTListing) -> Dictionary<NFTListing> {
    Dictionary.put(listings, tokenId, listing)
}
