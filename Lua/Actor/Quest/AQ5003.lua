require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5003 = class("Quest5003", QuestActorProxy)
Quest5003.defaultAlias = "Quest5003"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5003:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["500301"] = self.OnSubStart500301,
        ["500302"] = self.OnSubStart500302,
        ["500303"] = self.OnSubStart500303,
        ["500304"] = self.OnSubStart500304,
        ["500308"] = self.OnSubStart500308,
        ["500310"] = self.OnSubStart500310,
        ["500306"] = self.OnSubStart500306,
        ["500309"] = self.OnSubStart500309,
        ["500307"] = self.OnSubStart500307,
        ["500305"] = self.OnSubStart500305
    }
end

function Quest5003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["500301"] = self.OnSubFinish500301,
        ["500302"] = self.OnSubFinish500302,
        ["500303"] = self.OnSubFinish500303,
        ["500304"] = self.OnSubFinish500304,
        ["500308"] = self.OnSubFinish500308,
        ["500310"] = self.OnSubFinish500310,
        ["500306"] = self.OnSubFinish500306,
        ["500309"] = self.OnSubFinish500309,
        ["500307"] = self.OnSubFinish500307,
        ["500305"] = self.OnSubFinish500305
    }
end

function Quest5003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["500304"] = self.OnSubFailed500304}
end

function Quest5003:Start()
    print("Start")
end

function Quest5003:OnDestroy()
    print("OnDestroy")
end

function Quest5003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5003:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5003:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest5003:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5003:OnSubStart500301(arg1)
    print("OnSubStart500301")
end

function Quest5003:OnSubFinish500301(arg1)
    print("OnSubFinish500301")
end

function Quest5003:OnSubStart500302(arg1)
    print("OnSubStart500302")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500302, 0, 5, 1, npcs.Npc1087.id)
end

function Quest5003:OnSubFinish500302(arg1)
    print("OnSubFinish500302")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
end

function Quest5003:OnSubStart500303(arg1)
    print("OnSubStart500303")
    actorMgr:CreateActorWithPos("Q500303transmit", "Actor/Gadget/Q500303transmit", 70900002, 0, points.Q500303.pos, points.Q500303.rot, true, false, 3)
end

function Quest5003:OnSubFinish500303(arg1)
    print("OnSubFinish500303")
end

function Quest5003:OnSubStart500304(arg1)
    print("OnSubStart500304")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1087.id, 0, 500304, 50, true)
end

function Quest5003:OnSubFinish500304(arg1)
    print("OnSubFinish500304")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20227)
end

function Quest5003:OnSubFailed500304(arg1)
    print("OnSubFailed500304")
    this:ActorDestroy("Q500304N1087Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1087.alias, 1095)
end

function Quest5003:OnSubStart500308(arg1)
    print("OnSubStart500308")
    actorMgr:CreateActorWithPos("Q500308transmit", "Actor/Gadget/Q500308transmit", 70900002, 0, points.Q500308.pos, points.Q500308.rot, true, false, 20227)
end

function Quest5003:OnSubFinish500308(arg1)
    print("OnSubFinish500308")
    this:ActorDestroy("Q500308transmit")
end

function Quest5003:OnSubStart500310(arg1)
    print("OnSubStart500310")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1089.id, 0, 500310, 50, true)
    end)
end

function Quest5003:OnSubFinish500310(arg1)
    print("OnSubFinish500310")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1095)
    actorMgr:CreateActorWithPos("Q500310Transmit", "Actor/Gadget/Q500310Transmit", 70900002, 0, points._Q500310TransmitPoint_.pos, points._Q500310TransmitPoint_.rot, true, false, 1095)
end

function Quest5003:OnSubStart500306(arg1)
    print("OnSubStart500306")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1089.id, 0, 500306, 15, false)
end

function Quest5003:OnSubFinish500306(arg1)
    print("OnSubFinish500306")
    this:ActorDestroy("Q500310Transmit")
end

function Quest5003:OnSubStart500309(arg1)
    print("OnSubStart500309")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1089.id, 0, 500309, 20, true)
    end)
end

function Quest5003:OnSubFinish500309(arg1)
    print("OnSubFinish500309")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 3)
    this:TransmitPlayerWithQuestIdByData(500306, 1, datas.TransmitDataNoWord, nil, nil, nil)
end

function Quest5003:OnSubStart500307(arg1)
    print("OnSubStart500307")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1087.id, 0, 500307, 15, true)
end

function Quest5003:OnSubFinish500307(arg1)
    print("OnSubFinish500307")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
end

function Quest5003:OnSubStart500305(arg1)
    print("OnSubStart500305")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1089.id, 0, 500305, 30, true)
end

function Quest5003:OnSubFinish500305(arg1)
    print("OnSubFinish500305")
end

return Quest5003
