using JSON
include("base64url/Base64URL.jl")

function JSON.lower(publickey::PublicKey)
    jwk_public = Dict(
        "kty" => "DAJ",
        "alg" => "PAI-GN1",
        "key_ops" => ["encrypt"],
        "n" => convert(Vector{UInt8}, string(pub.n, base=16)),  # TODO not finished...
        "kid" => "Paillier public key generated by Paillier.jl"
    )
end

function JSON.lower(e::EncryptedNumber)
    # TODO
end
