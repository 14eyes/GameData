require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73350 = class("Quest73350", QuestActorProxy)
Quest73350.defaultAlias = "Quest73350"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73350:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73350:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7335001"] = self.OnSubStart7335001,
        ["7335002"] = self.OnSubStart7335002,
        ["7335003"] = self.OnSubStart7335003
    }
end

function Quest73350:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7335001"] = self.OnSubFinish7335001,
        ["7335002"] = self.OnSubFinish7335002,
        ["7335003"] = self.OnSubFinish7335003
    }
end

function Quest73350:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73350:Start()
    print("Start")
end

function Quest73350:OnDestroy()
    print("OnDestroy")
end

function Quest73350:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73350:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73350:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73350:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73350:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73350:OnSubStart7335001(arg1)
    print("OnSubStart7335001")
    this:CreateQuestNpc(arg1, npcs.Npc4456Data.id, 1)
end

function Quest73350:OnSubFinish7335001(arg1)
    print("OnSubFinish7335001")
    this:TransmitPlayerById(arg1, 1)
end

function Quest73350:OnSubStart7335002(arg1)
    print("OnSubStart7335002")
    this:CreateQuestNpc(arg1, npcs.Npc21080Data.id, 2)
end

function Quest73350:OnSubFinish7335002(arg1)
    print("OnSubFinish7335002")
    this:SafeDestroyQuestNpc(npcs.Npc21080Data.alias, 3)
    this:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73350)
end

function Quest73350:OnSubStart7335003(arg1)
    print("OnSubStart7335003")
end

function Quest73350:OnSubFinish7335003(arg1)
    print("OnSubFinish7335003")
    this:ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc4456Data.alias, 3)
    end, nil, nil, 0, false, true)

    this:ClearNarratorTask()
end

return Quest73350
