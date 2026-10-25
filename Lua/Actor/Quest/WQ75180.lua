require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75180 = class("Quest75180", QuestActorProxy)
Quest75180.defaultAlias = "Quest75180"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest75180:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest75180:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7518001"] = self.OnSubStart7518001,
        ["7518005"] = self.OnSubStart7518005,
        ["7518003"] = self.OnSubStart7518003,
        ["7518004"] = self.OnSubStart7518004,
        ["7518002"] = self.OnSubStart7518002
    }
end

function Quest75180:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7518001"] = self.OnSubFinish7518001,
        ["7518005"] = self.OnSubFinish7518005,
        ["7518003"] = self.OnSubFinish7518003,
        ["7518004"] = self.OnSubFinish7518004,
        ["7518002"] = self.OnSubFinish7518002
    }
end

function Quest75180:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75180:Start()
    print("Start")
end

function Quest75180:OnDestroy()
    print("OnDestroy")
end

function Quest75180:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75180:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75180:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75180:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75180:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75180:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75180:OnSubStart7518001(arg1)
    print("OnSubStart7518001")
    this:CreateQuestNpc(arg1, npcs.Npc21802.id, 0, false, 0)
end

function Quest75180:OnSubFinish7518001(arg1)
    print("OnSubFinish7518001")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
end

function Quest75180:OnSubStart7518005(arg1)
    print("OnSubStart7518005")
    this:CallDelayByQuest("trans", 1.2, function(arg1)
        actorUtils.FinishQuestID(false, 7518005)
    end)
end

function Quest75180:OnSubFinish7518005(arg1)
    print("OnSubFinish7518005")
    this:ShowBlackScreenWithDialogText(0.2, 0.6, 0.2, nil, nil, nil, 0, false, true)
end

function Quest75180:OnSubStart7518003(arg1)
    print("OnSubStart7518003")
    this:NpcCreateWithNpcTrigger(npcs.Npc21802.id, 0, 10, 7518003)
    this:GetQuestNpcActor(npcs.Npc21802.alias, 75180):DoFreeStyle(2, false, nil, true, true, false, false)
end

function Quest75180:OnSubFinish7518003(arg1)
    print("OnSubFinish7518003")
    this:SafeDestroyQuestNpc(npcs.Npc21802.alias, 3)
    this:CallDelayByQuest("trans", 1, function(arg1)
        this:ShowBlackScreenWithDialogText(0.2, 0.8, 0.2, nil, nil, nil, 0, false, true)
    end)
end

function Quest75180:OnSubStart7518004(arg1)
    print("OnSubStart7518004")
end

function Quest75180:OnSubFinish7518004(arg1)
    print("OnSubFinish7518004")
end

function Quest75180:OnSubStart7518002(arg1)
    print("OnSubStart7518002")
end

function Quest75180:OnSubFinish7518002(arg1)
    print("OnSubFinish7518002")
    this:NpcDestroyImmediately(3, npcs.Npc21802.alias)
end

return Quest75180
