require("Actor/ActorCommon")

local GlobalBubbleConversation = {}
local tbl = {coolDown = 5.0}
local nodeIds = {}
local n = 1001
nodeIds[1] = 999
nodeIds[2] = n
tbl.nodeIds = nodeIds

tbl.lines = {
    {dialogId = 1016140300, npcId = 1403, duration = 2.0, intervalMin = 1, intervalMax = 2},
    {dialogId = 1016140100, npcId = 1401, duration = 2.0, intervalMin = 1, intervalMax = 2},
    {dialogId = 1016140301, npcId = 1403, duration = 2.0, intervalMin = 1, intervalMax = 2},
    {dialogId = 1016140101, npcId = 1401, duration = 2.0, intervalMin = 1, intervalMax = 2},
    {dialogId = 1016140302, npcId = 1403, duration = 2.0, intervalMin = 1, intervalMax = 2}
}

local v = {
    coolDown = 0,
    nodeIds = {1889},
    lines = {
        {dialogId = 4015140101, npcId = 1403, duration = 2.0, intervalMin = 1, intervalMax = 2},
        {dialogId = 4015140102, npcId = 1401, duration = 2.0, intervalMin = 1, intervalMax = 2},
        {dialogId = 4015140103, npcId = 1403, duration = 2.0, intervalMin = 1, intervalMax = 2},
        {dialogId = 4015140104, npcId = 1403, duration = 2.0, intervalMin = 1, intervalMax = 2},
        {dialogId = 4015140105, npcId = 1401, duration = 2.0, intervalMin = 1, intervalMax = 2},
        {dialogId = 4015140106, npcId = 1403, duration = 2.0, intervalMin = 1, intervalMax = 2},
        {dialogId = 4015140107, npcId = 1403, duration = 2.0, intervalMin = 1, intervalMax = 2},
        {dialogId = 4015140108, npcId = 1401, duration = 2.0, intervalMin = 1, intervalMax = 2},
        {dialogId = 4015140109, npcId = 1401, duration = 2.0, intervalMin = 1, intervalMax = 2},
        {dialogId = 4015140110, npcId = 1403, duration = 2.0, intervalMin = 1, intervalMax = 2},
        {dialogId = 4015140199, npcId = 1401, duration = 2.0, intervalMin = 1, intervalMax = 2}
    }
}

GlobalBubbleConversation[1] = tbl
GlobalBubbleConversation[2] = v
return GlobalBubbleConversation
