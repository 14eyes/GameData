require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75039 = class("Quest75039", QuestActorProxy)
Quest75039.defaultAlias = "Quest75039"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75039:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75039:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7503921"] = self.OnSubStart7503921,
        ["7503901"] = self.OnSubStart7503901,
        ["7503902"] = self.OnSubStart7503902,
        ["7503919"] = self.OnSubStart7503919,
        ["7503920"] = self.OnSubStart7503920,
        ["7503915"] = self.OnSubStart7503915,
        ["7503916"] = self.OnSubStart7503916,
        ["7503917"] = self.OnSubStart7503917,
        ["7503918"] = self.OnSubStart7503918,
        ["7503903"] = self.OnSubStart7503903,
        ["7503904"] = self.OnSubStart7503904,
        ["7503905"] = self.OnSubStart7503905,
        ["7503906"] = self.OnSubStart7503906,
        ["7503907"] = self.OnSubStart7503907,
        ["7503908"] = self.OnSubStart7503908,
        ["7503914"] = self.OnSubStart7503914,
        ["7503909"] = self.OnSubStart7503909,
        ["7503910"] = self.OnSubStart7503910,
        ["7503911"] = self.OnSubStart7503911,
        ["7503912"] = self.OnSubStart7503912,
        ["7503913"] = self.OnSubStart7503913
    }
end

function Quest75039:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7503921"] = self.OnSubFinish7503921,
        ["7503901"] = self.OnSubFinish7503901,
        ["7503902"] = self.OnSubFinish7503902,
        ["7503919"] = self.OnSubFinish7503919,
        ["7503920"] = self.OnSubFinish7503920,
        ["7503915"] = self.OnSubFinish7503915,
        ["7503916"] = self.OnSubFinish7503916,
        ["7503917"] = self.OnSubFinish7503917,
        ["7503918"] = self.OnSubFinish7503918,
        ["7503903"] = self.OnSubFinish7503903,
        ["7503904"] = self.OnSubFinish7503904,
        ["7503905"] = self.OnSubFinish7503905,
        ["7503906"] = self.OnSubFinish7503906,
        ["7503907"] = self.OnSubFinish7503907,
        ["7503908"] = self.OnSubFinish7503908,
        ["7503914"] = self.OnSubFinish7503914,
        ["7503909"] = self.OnSubFinish7503909,
        ["7503910"] = self.OnSubFinish7503910,
        ["7503911"] = self.OnSubFinish7503911,
        ["7503912"] = self.OnSubFinish7503912,
        ["7503913"] = self.OnSubFinish7503913
    }
end

function Quest75039:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75039:Start()
    print("Start")
end

function Quest75039:OnDestroy()
    print("OnDestroy")
end

function Quest75039:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75039:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75039:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75039:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7503919)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7503920)
    end
end

function Quest75039:OnSubStart7503921(arg1)
    print("OnSubStart7503921")
end

function Quest75039:OnSubFinish7503921(arg1)
    print("OnSubFinish7503921")
end

function Quest75039:OnSubStart7503901(arg1)
    print("OnSubStart7503901")
    this:CreateQuestNpc(arg1, npcs.Npc21586Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21586Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7503901Trigger", "Actor/Gadget/Q7503901Trigger", 70900002, 0, {x = -1336.984, y = 231.344, z = 9507.927}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7503901Trigger2", "Actor/Gadget/Q7503901Trigger2", 70900002, 0, {x = -1333.354, y = 246.404, z = 9508.424}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7503902Trigger", "Actor/Gadget/Q7503902Trigger", 70900002, 0, {x = -1331.896, y = 247.659, z = 9516.092}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75039:OnSubFinish7503901(arg1)
    print("OnSubFinish7503901")
end

function Quest75039:OnSubStart7503902(arg1)
    print("OnSubStart7503902")
    this:CreateQuestNpc(arg1, npcs.Npc21586Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21586Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
end

function Quest75039:OnSubFinish7503902(arg1)
    print("OnSubFinish7503902")
end

function Quest75039:OnSubStart7503919(arg1)
    print("OnSubStart7503919")
end

function Quest75039:OnSubFinish7503919(arg1)
    print("OnSubFinish7503919")
end

function Quest75039:OnSubStart7503920(arg1)
    print("OnSubStart7503920")
end

function Quest75039:OnSubFinish7503920(arg1)
    print("OnSubFinish7503920")
end

function Quest75039:OnSubStart7503915(arg1)
    print("OnSubStart7503915")
    this:CreateQuestNpc(arg1, npcs.Npc21586Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21586Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
end

function Quest75039:OnSubFinish7503915(arg1)
    print("OnSubFinish7503915")
    this:CallDelayByQuest("", 4, function(arg1)
        this:RequestInteraction(npcs.Npc21586Data.alias, "", true)
    end)
end

function Quest75039:OnSubStart7503916(arg1)
    print("OnSubStart7503916")
end

function Quest75039:OnSubFinish7503916(arg1)
    print("OnSubFinish7503916")
end

function Quest75039:OnSubStart7503917(arg1)
    print("OnSubStart7503917")
end

function Quest75039:OnSubFinish7503917(arg1)
    print("OnSubFinish7503917")
end

function Quest75039:OnSubStart7503918(arg1)
    print("OnSubStart7503918")
end

function Quest75039:OnSubFinish7503918(arg1)
    print("OnSubFinish7503918")
end

function Quest75039:OnSubStart7503903(arg1)
    print("OnSubStart7503903")
    this:CreateQuestNpc(arg1, npcs.Npc21586Data.id, 0, false, 0)
end

function Quest75039:OnSubFinish7503903(arg1)
    print("OnSubFinish7503903")
    this:SafeDestroyQuestNpc(npcs.Npc21586Data.alias, 3)
end

function Quest75039:OnSubStart7503904(arg1)
    print("OnSubStart7503904")
end

function Quest75039:OnSubFinish7503904(arg1)
    print("OnSubFinish7503904")
end

function Quest75039:OnSubStart7503905(arg1)
    print("OnSubStart7503905")
end

function Quest75039:OnSubFinish7503905(arg1)
    print("OnSubFinish7503905")
end

function Quest75039:OnSubStart7503906(arg1)
    print("OnSubStart7503906")
end

function Quest75039:OnSubFinish7503906(arg1)
    print("OnSubFinish7503906")
end

function Quest75039:OnSubStart7503907(arg1)
    print("OnSubStart7503907")
end

function Quest75039:OnSubFinish7503907(arg1)
    print("OnSubFinish7503907")
end

function Quest75039:OnSubStart7503908(arg1)
    print("OnSubStart7503908")
end

function Quest75039:OnSubFinish7503908(arg1)
    print("OnSubFinish7503908")
end

function Quest75039:OnSubStart7503914(arg1)
    print("OnSubStart7503914")
end

function Quest75039:OnSubFinish7503914(arg1)
    print("OnSubFinish7503914")
end

function Quest75039:OnSubStart7503909(arg1)
    print("OnSubStart7503909")
end

function Quest75039:OnSubFinish7503909(arg1)
    print("OnSubFinish7503909")
end

function Quest75039:OnSubStart7503910(arg1)
    print("OnSubStart7503910")
end

function Quest75039:OnSubFinish7503910(arg1)
    print("OnSubFinish7503910")
end

function Quest75039:OnSubStart7503911(arg1)
    print("OnSubStart7503911")
end

function Quest75039:OnSubFinish7503911(arg1)
    print("OnSubFinish7503911")
end

function Quest75039:OnSubStart7503912(arg1)
    print("OnSubStart7503912")
end

function Quest75039:OnSubFinish7503912(arg1)
    print("OnSubFinish7503912")
end

function Quest75039:OnSubStart7503913(arg1)
    print("OnSubStart7503913")
end

function Quest75039:OnSubFinish7503913(arg1)
    print("OnSubFinish7503913")
end

return Quest75039
