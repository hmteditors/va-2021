using CitableText
using CitableObject
using CitableImage
using CitableTeiReaders
using CSV
using DataFrames
using EditionBuilders
using EditorsRepo
using HTTP
#using Lycian
using Markdown
using Orthography
using ManuscriptOrthography
using PolytonicGreek



repo = EditingRepository(pwd(), "editions", "dse", "config")
surf = Cite2Urn("urn:cite2:hmt:msA.v1:100v")

sdse = EditorsRepo.surfaceDse(repo, surf)
u = sdse[1,1]
diplomaticnodes(repo, u)