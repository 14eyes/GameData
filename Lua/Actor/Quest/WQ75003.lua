require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75003 = class("Quest75003", QuestActorProxy)
Quest75003.defaultAlias = "Quest75003"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75003:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7500306"] = self.OnSubStart7500306,
        ["7500307"] = self.OnSubStart7500307,
        ["7500301"] = self.OnSubStart7500301,
        ["7500302"] = self.OnSubStart7500302,
        ["7500304"] = self.OnSubStart7500304,
        ["7500305"] = self.OnSubStart7500305,
        ["7500303"] = self.OnSubStart7500303
    }
end

function Quest75003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7500306"] = self.OnSubFinish7500306,
        ["7500307"] = self.OnSubFinish7500307,
        ["7500301"] = self.OnSubFinish7500301,
        ["7500302"] = self.OnSubFinish7500302,
        ["7500304"] = self.OnSubFinish7500304,
        ["7500305"] = self.OnSubFinish7500305,
        ["7500303"] = self.OnSubFinish7500303
    }
end

function Quest75003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75003:Start()
    print("Start")
end

function Quest75003:OnDestroy()
    print("OnDestroy")
end

function Quest75003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75003:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest75003:OnSubStart7500306(arg1)
    print("OnSubStart7500306")
end

function Quest75003:OnSubFinish7500306(arg1)
    print("OnSubFinish7500306")
end

function Quest75003:OnSubStart7500307(arg1)
    print("OnSubStart7500307")
end

function Quest75003:OnSubFinish7500307(arg1)
    print("OnSubFinish7500307")
end

function Quest75003:OnSubStart7500301(arg1)
    print("OnSubStart7500301")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21515Data.id, 0, npcs.Npc21515Data.alias)
end

function Quest75003:OnSubFinish7500301(arg1)
    print("OnSubFinish7500301")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75003:OnSubStart7500302(arg1)
    print("OnSubStart7500302")
    actorMgr:CreateActorWithPos("Q7500302Trigger", "Actor/Gadget/Q7500302Trigger", 70900002, 0, {x = -1395.987, y = -755.246, z = 8051.439}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7500302FailTrigger", "Actor/Gadget/Q7500302FailTrigger", 70900002, 0, {x = -1421.96, y = -763.78, z = 7999.319}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:DisableMainPageWithConfigByQuest(true, "DisableTestSumeruMainQuest")
end

function Quest75003:OnSubFinish7500302(arg1)
    print("OnSubFinish7500302")
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
end

function Quest75003:OnSubStart7500304(arg1)
    print("OnSubStart7500304")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21515Data.id, 0, npcs.Npc21515Data.alias)
end

function Quest75003:OnSubFinish7500304(arg1)
    print("OnSubFinish7500304")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75003:OnSubStart7500305(arg1)
    print("OnSubStart7500305")
end

function Quest75003:OnSubFinish7500305(arg1)
    print("OnSubFinish7500305")
end

function Quest75003:OnSubStart7500303(arg1)
    print("OnSubStart7500303")
end

function Quest75003:OnSubFinish7500303(arg1)
    print("OnSubFinish7500303")
end

return Quest75003
