require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6038 = class("Quest6038", QuestActorProxy)
Quest6038.defaultAlias = "Quest6038"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6038:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6038:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["603801"] = self.OnSubStart603801,
        ["603802"] = self.OnSubStart603802,
        ["603803"] = self.OnSubStart603803,
        ["603804"] = self.OnSubStart603804,
        ["603805"] = self.OnSubStart603805,
        ["603806"] = self.OnSubStart603806,
        ["603807"] = self.OnSubStart603807,
        ["603808"] = self.OnSubStart603808,
        ["603809"] = self.OnSubStart603809,
        ["603810"] = self.OnSubStart603810,
        ["603812"] = self.OnSubStart603812,
        ["603811"] = self.OnSubStart603811
    }
end

function Quest6038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["603801"] = self.OnSubFinish603801,
        ["603802"] = self.OnSubFinish603802,
        ["603803"] = self.OnSubFinish603803,
        ["603804"] = self.OnSubFinish603804,
        ["603805"] = self.OnSubFinish603805,
        ["603806"] = self.OnSubFinish603806,
        ["603807"] = self.OnSubFinish603807,
        ["603808"] = self.OnSubFinish603808,
        ["603809"] = self.OnSubFinish603809,
        ["603810"] = self.OnSubFinish603810,
        ["603812"] = self.OnSubFinish603812,
        ["603811"] = self.OnSubFinish603811
    }
end

function Quest6038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest6038:Start()
    print("Start")
end

function Quest6038:OnDestroy()
    print("OnDestroy")
end

function Quest6038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6038:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6038:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q603802Trigger", 6038)
    this:ActorDestroy("Q603803Trigger", 6038)
    this:ActorDestroy("Q603807Trigger", 6038)
end

function Quest6038:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest6038:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6038:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6038:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest6038:OnSubStart603801(arg1)
    print("OnSubStart603801")
    this:NpcCreateWithNpcTriggerAndBlackscreen(603801, 0, 10, 1, npcs.Npc16911.id)
end

function Quest6038:OnSubFinish603801(arg1)
    print("OnSubFinish603801")
    this:NpcDestroyImmediately(3, npcs.Npc16911.alias)
    this:PlayerEnterDungeonWithData(1981, 1315, 603801, 1, datas.TransmitData_blackscreen, nil, nil)
end

function Quest6038:OnSubStart603802(arg1)
    print("OnSubStart603802")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc16911.id, 0, 603802, 20, true)
end

function Quest6038:OnSubFinish603802(arg1)
    print("OnSubFinish603802")
    this:NpcDestroyImmediately(20344, npcs.Npc16911.alias)
end

function Quest6038:OnSubStart603803(arg1)
    print("OnSubStart603803")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc16911.id, 0, 603803, 20, true)
    actorMgr:CreateActorWithPos("Q603803Trigger", "Actor/Gadget/Q603803Trigger", 70900002, 0, points._Q603803TriggerPoint_.pos, points._Q603803TriggerPoint_.rot, true, false, 20344, nil, 0, 6038)
end

function Quest6038:OnSubFinish603803(arg1)
    print("OnSubFinish603803")
    this:NpcDestroyImmediately(1079, npcs.Npc16911.alias)
    this:TransmitPlayerByData(arg1, 3, datas.TransmitData_blackscreen, nil, nil, nil)
    this:ActorDestroy("Q603803Trigger", 6038)
end

function Quest6038:OnSubStart603804(arg1)
    print("OnSubStart603804")
    this:NpcCreateWithNpcTriggerAndBlackscreen(603804, 0, 20, 1, npcs.Npc16911.id)
end

function Quest6038:OnSubFinish603804(arg1)
    print("OnSubFinish603804")
    this:NpcDestroyImmediately(3, npcs.Npc16911.alias)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_blackscreen, nil, nil, nil)
end

function Quest6038:OnSubStart603805(arg1)
    print("OnSubStart603805")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc16911.id, 0, 603805, 20, true)
end

function Quest6038:OnSubFinish603805(arg1)
    print("OnSubFinish603805")
    this:NpcDestroyImmediately(1073, npcs.Npc16911.alias)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_blackscreen, nil, nil, nil)
end

function Quest6038:OnSubStart603806(arg1)
    print("OnSubStart603806")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc16911.id, 0, 603806, 20, true)
end

function Quest6038:OnSubFinish603806(arg1)
    print("OnSubFinish603806")
    this:NpcDestroyImmediately(3, npcs.Npc16911.alias)
end

function Quest6038:OnSubStart603807(arg1)
    print("OnSubStart603807")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc16911.id, 0, 603807, 15, true)
    actorMgr:CreateActorWithPos("Q603807Trigger", "Actor/Gadget/Q603807Trigger", 70900002, 0, points._Q603807TriggerPoint_.pos, points._Q603807TriggerPoint_.rot, true, false, 3, nil, 0, 6038)
end

function Quest6038:OnSubFinish603807(arg1)
    print("OnSubFinish603807")
    this:NpcDestroyImmediately(20345, npcs.Npc16911.alias)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_blackscreen, nil, nil, nil)
    this:ActorDestroy("Q603807Trigger", 6038)
end

function Quest6038:OnSubStart603808(arg1)
    print("OnSubStart603808")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc16911.id, 0, 603808, 20, true)
end

function Quest6038:OnSubFinish603808(arg1)
    print("OnSubFinish603808")
    this:NpcDestroyImmediately(3, npcs.Npc16911.alias)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_blackscreen, nil, nil, nil)
end

function Quest6038:OnSubStart603809(arg1)
    print("OnSubStart603809")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc16911.id, 0, 603809, 10, true)
end

function Quest6038:OnSubFinish603809(arg1)
    print("OnSubFinish603809")
    this:NpcDestroyImmediately(3, npcs.Npc16911.alias)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_blackscreen, nil, nil, nil)
end

function Quest6038:OnSubStart603810(arg1)
    print("OnSubStart603810")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc16911.id, 0, 603810, 20, true)
end

function Quest6038:OnSubFinish603810(arg1)
    print("OnSubFinish603810")
    this:NpcDestroyImmediately(3, npcs.Npc16911.alias)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_blackscreen, nil, nil, nil)
end

function Quest6038:OnSubStart603812(arg1)
    print("OnSubStart603812")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc16911.id, 0, 603812, 10, true)
end

function Quest6038:OnSubFinish603812(arg1)
    print("OnSubFinish603812")
    this:NpcDestroyImmediately(1004, npcs.Npc16911.alias)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_blackscreen, nil, nil, nil)
end

function Quest6038:OnSubStart603811(arg1)
    print("OnSubStart603811")
    this:NpcCreateWithNpcTriggerAndBlackscreen(603811, 0, 20, 1, npcs.Npc16911.id)
end

function Quest6038:OnSubFinish603811(arg1)
    print("OnSubFinish603811")
    this:NpcDestroyImmediately(3, npcs.Npc16911.alias)
end

return Quest6038
