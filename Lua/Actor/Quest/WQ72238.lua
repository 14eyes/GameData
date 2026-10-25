require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72238 = class("Quest72238", QuestActorProxy)
Quest72238.defaultAlias = "Quest72238"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72238:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72238:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7223801"] = self.OnSubStart7223801, ["7223802"] = self.OnSubStart7223802}
end

function Quest72238:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7223801"] = self.OnSubFinish7223801, ["7223802"] = self.OnSubFinish7223802}
end

function Quest72238:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72238:Start()
    print("Start")
end

function Quest72238:OnDestroy()
    print("OnDestroy")
end

function Quest72238:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72238:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72238:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72238:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72238:OnSubStart7223801(arg1)
    print("OnSubStart7223801")
    self:NpcCreate(arg1, npcs.NPC20353Data.id, 1)
end

function Quest72238:OnSubFinish7223801(arg1)
    print("OnSubFinish7223801")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest72238:OnSubStart7223802(arg1)
    print("OnSubStart7223802")
    actorMgr:CreateActorWithPos("Q72238Trigger", "Actor/Gadget/Q72238Trigger", 70900002, 0, {x = 617.0968, y = 213.289, z = 626.7677}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72238:OnSubFinish7223802(arg1)
    print("OnSubFinish7223802")
    self:SafeDestroyQuestNpc(npcs.NPC20353Data.alias, 5)
end

return Quest72238
