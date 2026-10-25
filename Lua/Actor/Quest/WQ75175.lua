require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75175 = class("Quest75175", QuestActorProxy)
Quest75175.defaultAlias = "Quest75175"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75175:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75175:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7517514"] = self.OnSubStart7517514,
        ["7517510"] = self.OnSubStart7517510,
        ["7517501"] = self.OnSubStart7517501,
        ["7517502"] = self.OnSubStart7517502,
        ["7517503"] = self.OnSubStart7517503,
        ["7517504"] = self.OnSubStart7517504,
        ["7517505"] = self.OnSubStart7517505,
        ["7517506"] = self.OnSubStart7517506,
        ["7517507"] = self.OnSubStart7517507,
        ["7517508"] = self.OnSubStart7517508,
        ["7517509"] = self.OnSubStart7517509,
        ["7517512"] = self.OnSubStart7517512,
        ["7517513"] = self.OnSubStart7517513,
        ["7517515"] = self.OnSubStart7517515
    }
end

function Quest75175:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7517514"] = self.OnSubFinish7517514,
        ["7517510"] = self.OnSubFinish7517510,
        ["7517501"] = self.OnSubFinish7517501,
        ["7517502"] = self.OnSubFinish7517502,
        ["7517503"] = self.OnSubFinish7517503,
        ["7517504"] = self.OnSubFinish7517504,
        ["7517505"] = self.OnSubFinish7517505,
        ["7517506"] = self.OnSubFinish7517506,
        ["7517507"] = self.OnSubFinish7517507,
        ["7517508"] = self.OnSubFinish7517508,
        ["7517509"] = self.OnSubFinish7517509,
        ["7517512"] = self.OnSubFinish7517512,
        ["7517513"] = self.OnSubFinish7517513,
        ["7517515"] = self.OnSubFinish7517515
    }
end

function Quest75175:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75175:Start()
    print("Start")
end

function Quest75175:OnDestroy()
    print("OnDestroy")
end

function Quest75175:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75175:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75175:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75175:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75175:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75175:OnSubStart7517514(arg1)
    print("OnSubStart7517514")
end

function Quest75175:OnSubFinish7517514(arg1)
    print("OnSubFinish7517514")
    this:SetNavigationByMainId(75175, true)
end

function Quest75175:OnSubStart7517510(arg1)
    print("OnSubStart7517510")
end

function Quest75175:OnSubFinish7517510(arg1)
    print("OnSubFinish7517510")
end

function Quest75175:OnSubStart7517501(arg1)
    print("OnSubStart7517501")
end

function Quest75175:OnSubFinish7517501(arg1)
    print("OnSubFinish7517501")
end

function Quest75175:OnSubStart7517502(arg1)
    print("OnSubStart7517502")
end

function Quest75175:OnSubFinish7517502(arg1)
    print("OnSubFinish7517502")
end

function Quest75175:OnSubStart7517503(arg1)
    print("OnSubStart7517503")
end

function Quest75175:OnSubFinish7517503(arg1)
    print("OnSubFinish7517503")
end

function Quest75175:OnSubStart7517504(arg1)
    print("OnSubStart7517504")
end

function Quest75175:OnSubFinish7517504(arg1)
    print("OnSubFinish7517504")
end

function Quest75175:OnSubStart7517505(arg1)
    print("OnSubStart7517505")
end

function Quest75175:OnSubFinish7517505(arg1)
    print("OnSubFinish7517505")
end

function Quest75175:OnSubStart7517506(arg1)
    print("OnSubStart7517506")
end

function Quest75175:OnSubFinish7517506(arg1)
    print("OnSubFinish7517506")
end

function Quest75175:OnSubStart7517507(arg1)
    print("OnSubStart7517507")
end

function Quest75175:OnSubFinish7517507(arg1)
    print("OnSubFinish7517507")
end

function Quest75175:OnSubStart7517508(arg1)
    print("OnSubStart7517508")
end

function Quest75175:OnSubFinish7517508(arg1)
    print("OnSubFinish7517508")
end

function Quest75175:OnSubStart7517509(arg1)
    print("OnSubStart7517509")
end

function Quest75175:OnSubFinish7517509(arg1)
    print("OnSubFinish7517509")
end

function Quest75175:OnSubStart7517512(arg1)
    print("OnSubStart7517512")
end

function Quest75175:OnSubFinish7517512(arg1)
    print("OnSubFinish7517512")
end

function Quest75175:OnSubStart7517513(arg1)
    print("OnSubStart7517513")
end

function Quest75175:OnSubFinish7517513(arg1)
    print("OnSubFinish7517513")
end

function Quest75175:OnSubStart7517515(arg1)
    print("OnSubStart7517515")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7517515, 0, 5, 1, npcs.Npc21806.id)
end

function Quest75175:OnSubFinish7517515(arg1)
    print("OnSubFinish7517515")
    this:SafeDestroyQuestNpc(npcs.Npc21806.alias, 101)
    this:SetNavigationByMainId(75181, true)
end

return Quest75175
