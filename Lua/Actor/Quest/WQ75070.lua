require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75070 = class("Quest75070", QuestActorProxy)
Quest75070.defaultAlias = "Quest75070"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest75070:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75070:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7507007"] = self.OnSubStart7507007,
        ["7507019"] = self.OnSubStart7507019,
        ["7507008"] = self.OnSubStart7507008,
        ["7507015"] = self.OnSubStart7507015,
        ["7507016"] = self.OnSubStart7507016,
        ["7507018"] = self.OnSubStart7507018,
        ["7507017"] = self.OnSubStart7507017,
        ["7507014"] = self.OnSubStart7507014,
        ["7507009"] = self.OnSubStart7507009
    }
end

function Quest75070:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7507007"] = self.OnSubFinish7507007,
        ["7507019"] = self.OnSubFinish7507019,
        ["7507008"] = self.OnSubFinish7507008,
        ["7507015"] = self.OnSubFinish7507015,
        ["7507016"] = self.OnSubFinish7507016,
        ["7507018"] = self.OnSubFinish7507018,
        ["7507017"] = self.OnSubFinish7507017,
        ["7507014"] = self.OnSubFinish7507014,
        ["7507009"] = self.OnSubFinish7507009
    }
end

function Quest75070:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7507008"] = self.OnSubFailed7507008}
end

function Quest75070:Start()
    print("Start")
end

function Quest75070:OnDestroy()
    print("OnDestroy")
end

function Quest75070:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75070:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75070:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75070:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest75070:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7507014)
    end
end

function Quest75070:OnSubStart7507007(arg1)
    print("OnSubStart7507007")
    this:NpcCreateWithNpcTrigger(npcs.Npc21586Data.id, 7507007, 0, 15)
end

function Quest75070:OnSubFinish7507007(arg1)
    print("OnSubFinish7507007")
    this:TransmitPlayerById(arg1, 1)
end

function Quest75070:OnSubStart7507019(arg1)
    print("OnSubStart7507019")
    actorMgr:CreateActorWithPos("Q7507019Trigger", "Actor/Gadget/Q7507019Trigger", 70900002, 0, {x = -1335.002, y = 201.589, z = 9750.276}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75070:OnSubFinish7507019(arg1)
    print("OnSubFinish7507019")
    this:ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Quest75070:OnSubStart7507008(arg1)
    print("OnSubStart7507008")
    this:CreateQuestNpc(arg1, npcs.Npc21586Data.id, 0, false, 0)
end

function Quest75070:OnSubFinish7507008(arg1)
    print("OnSubFinish7507008")
    this:CallDelayByQuest("", 2, function(arg1_2)
        this:TransmitPlayerById(arg1, 2)
    end)
end

function Quest75070:OnSubFailed7507008(arg1)
    print("OnSubFailed7507008")
    this:CallDelayByQuest("", 4, function(arg1_2)
        this:TransmitPlayerById(arg1, 2)
    end)
end

function Quest75070:OnSubStart7507015(arg1)
    print("OnSubStart7507015")
end

function Quest75070:OnSubFinish7507015(arg1)
    print("OnSubFinish7507015")
end

function Quest75070:OnSubStart7507016(arg1)
    print("OnSubStart7507016")
end

function Quest75070:OnSubFinish7507016(arg1)
    print("OnSubFinish7507016")
    this:CallDelayByQuest("", 2, function(arg1_2)
        this:TransmitPlayerById(arg1, 3)
    end)
end

function Quest75070:OnSubStart7507018(arg1)
    print("OnSubStart7507018")
    actorMgr:CreateActorWithPos("Q7507018Trigger", "Actor/Gadget/Q7507018Trigger", 70900002, 0, {x = -1335.132, y = 201.674, z = 9750.494}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75070:OnSubFinish7507018(arg1)
    print("OnSubFinish7507018")
    this:ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Quest75070:OnSubStart7507017(arg1)
    print("OnSubStart7507017")
end

function Quest75070:OnSubFinish7507017(arg1)
    print("OnSubFinish7507017")
end

function Quest75070:OnSubStart7507014(arg1)
    print("OnSubStart7507014")
    this:CreateQuestNpc(arg1, npcs.Npc21586Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7507008Trigger", "Actor/Gadget/Q7507008Trigger", 70900002, 0, points.TPos_Q7507008Trigger.pos, points.TPos_Q7507008Trigger.rot, true, false, 3)
end

function Quest75070:OnSubFinish7507014(arg1)
    print("OnSubFinish7507014")
    this:CallDelayByQuest("", 1.5, function(arg1_2)
        this:TransmitPlayerById(arg1, 3)
    end)
end

function Quest75070:OnSubStart7507009(arg1)
    print("OnSubStart7507009")
    this:CreateQuestNpc(arg1, npcs.Npc21586Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7507008Trigger", "Actor/Gadget/Q7507008Trigger", 70900002, 0, points.TPos_Q7507008Trigger.pos, points.TPos_Q7507008Trigger.rot, true, false, 3)
end

function Quest75070:OnSubFinish7507009(arg1)
    print("OnSubFinish7507009")
    this:SafeDestroyQuestNpc(npcs.Npc21586Data.alias, 3)
end

return Quest75070
