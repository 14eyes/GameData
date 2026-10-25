require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75091 = class("Quest75091", QuestActorProxy)
Quest75091.defaultAlias = "Quest75091"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75091:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75091:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7509101"] = self.OnSubStart7509101,
        ["7509102"] = self.OnSubStart7509102,
        ["7509103"] = self.OnSubStart7509103,
        ["7509104"] = self.OnSubStart7509104,
        ["7509105"] = self.OnSubStart7509105,
        ["7509106"] = self.OnSubStart7509106,
        ["7509107"] = self.OnSubStart7509107,
        ["7509108"] = self.OnSubStart7509108
    }
end

function Quest75091:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7509101"] = self.OnSubFinish7509101,
        ["7509102"] = self.OnSubFinish7509102,
        ["7509103"] = self.OnSubFinish7509103,
        ["7509104"] = self.OnSubFinish7509104,
        ["7509105"] = self.OnSubFinish7509105,
        ["7509106"] = self.OnSubFinish7509106,
        ["7509107"] = self.OnSubFinish7509107,
        ["7509108"] = self.OnSubFinish7509108
    }
end

function Quest75091:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75091:Start()
    print("Start")
end

function Quest75091:OnDestroy()
    print("OnDestroy")
end

function Quest75091:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75091:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75091:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75091:OnSubStart7509101(arg1)
    print("OnSubStart7509101")
    this:CreateQuestNpc(arg1, npcs.Npc21633Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21633Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest75091:OnSubFinish7509101(arg1)
    print("OnSubFinish7509101")
end

function Quest75091:OnSubStart7509102(arg1)
    print("OnSubStart7509102")
    this:GetQuestNpcActor(npcs.Npc21633Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest75091:OnSubFinish7509102(arg1)
    print("OnSubFinish7509102")
end

function Quest75091:OnSubStart7509103(arg1)
    print("OnSubStart7509103")
    this:CreateQuestNpc(arg1, npcs.Npc21633Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21633Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest75091:OnSubFinish7509103(arg1)
    print("OnSubFinish7509103")
end

function Quest75091:OnSubStart7509104(arg1)
    print("OnSubStart7509104")
    this:GetQuestNpcActor(npcs.Npc21633Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest75091:OnSubFinish7509104(arg1)
    print("OnSubFinish7509104")
end

function Quest75091:OnSubStart7509105(arg1)
    print("OnSubStart7509105")
    this:CreateQuestNpc(arg1, npcs.Npc21633Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21633Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest75091:OnSubFinish7509105(arg1)
    print("OnSubFinish7509105")
end

function Quest75091:OnSubStart7509106(arg1)
    print("OnSubStart7509106")
    this:GetQuestNpcActor(npcs.Npc21633Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest75091:OnSubFinish7509106(arg1)
    print("OnSubFinish7509106")
    this:SafeDestroyQuestNpc(npcs.Npc21633Data.alias, 3)
end

function Quest75091:OnSubStart7509107(arg1)
    print("OnSubStart7509107")
    actorMgr:CreateActorWithPos("Q75091Trigger", "Actor/Gadget/Q75091Trigger", 70900002, 0, {x = -2377.708, y = 212.695, z = 8161.831}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75091:OnSubFinish7509107(arg1)
    print("OnSubFinish7509107")
    this:QuestNarratorTask(datas.NarratorWithId)
end

function Quest75091:OnSubStart7509108(arg1)
    print("OnSubStart7509108")
end

function Quest75091:OnSubFinish7509108(arg1)
    print("OnSubFinish7509108")
end

return Quest75091
