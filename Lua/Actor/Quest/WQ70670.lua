require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70670 = class("Quest70670", QuestActorProxy)
Quest70670.defaultAlias = "Quest70670"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest70670:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70670:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7067001"] = self.OnSubStart7067001}
end

function Quest70670:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7067001"] = self.OnSubFinish7067001}
end

function Quest70670:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70670:Start()
    print("Start")
end

function Quest70670:OnDestroy()
    print("OnDestroy")
end

function Quest70670:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70670:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70670:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30051Data.alias, 3)
end

function Quest70670:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 706700101 then
        this:ShowTutorialDialog(812)
    elseif arg1 == 706700102 then
        actorUtils.FinishQuestID(false, 7067001)
    end
end

function Quest70670:OnSubStart7067001(arg1)
    print("OnSubStart7067001")
end

function Quest70670:OnSubFinish7067001(arg1)
    print("OnSubFinish7067001")
end

return Quest70670
