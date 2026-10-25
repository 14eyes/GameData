require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74170 = class("Quest74170", QuestActorProxy)
Quest74170.defaultAlias = "Quest74170"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74170:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74170:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7417001"] = self.OnSubStart7417001,
        ["7417002"] = self.OnSubStart7417002,
        ["7417005"] = self.OnSubStart7417005,
        ["7417003"] = self.OnSubStart7417003,
        ["7417006"] = self.OnSubStart7417006,
        ["7417004"] = self.OnSubStart7417004
    }
end

function Quest74170:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7417001"] = self.OnSubFinish7417001,
        ["7417002"] = self.OnSubFinish7417002,
        ["7417005"] = self.OnSubFinish7417005,
        ["7417003"] = self.OnSubFinish7417003,
        ["7417006"] = self.OnSubFinish7417006,
        ["7417004"] = self.OnSubFinish7417004
    }
end

function Quest74170:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7417003"] = self.OnSubFailed7417003}
end

function Quest74170:Start()
    print("Start")
end

function Quest74170:OnDestroy()
    print("OnDestroy")
end

function Quest74170:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74170:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74170:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74170:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74170:OnSubStart7417001(arg1)
    print("OnSubStart7417001")
    actorUtils.FinishQuestID(false, 7417001)
end

function Quest74170:OnSubFinish7417001(arg1)
    print("OnSubFinish7417001")
end

function Quest74170:OnSubStart7417002(arg1)
    print("OnSubStart7417002")
    this:CreateQuestNpc(arg1, npcs.Npc5225Data.id, 0)
end

function Quest74170:OnSubFinish7417002(arg1)
    print("OnSubFinish7417002")
end

function Quest74170:OnSubStart7417005(arg1)
    print("OnSubStart7417005")
    this:EnablePlayerInputByQuest(false)
    this:CountDownUIStart(0, 0, 3)
    this:CallDelayByQuest("1", 4, function(arg1)
        this:CountDownUITerminate()
        this:EnablePlayerInputByQuest(true)
        actorUtils.FinishQuestID(false, 7417005)
    end)
end

function Quest74170:OnSubFinish7417005(arg1)
    print("OnSubFinish7417005")
end

function Quest74170:OnSubStart7417003(arg1)
    print("OnSubStart7417003")
end

function Quest74170:OnSubFinish7417003(arg1)
    print("OnSubFinish7417003")
end

function Quest74170:OnSubFailed7417003(arg1)
    print("OnSubFailed7417003")
    this:TransmitPlayerById(arg1, 1)
end

function Quest74170:OnSubStart7417006(arg1)
    print("OnSubStart7417006")
end

function Quest74170:OnSubFinish7417006(arg1)
    print("OnSubFinish7417006")
end

function Quest74170:OnSubStart7417004(arg1)
    print("OnSubStart7417004")
end

function Quest74170:OnSubFinish7417004(arg1)
    print("OnSubFinish7417004")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5225Data.alias)
end

return Quest74170
