require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76218 = class("Quest76218", QuestActorProxy)
Quest76218.defaultAlias = "Quest76218"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76218:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76218:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7621801"] = self.OnSubStart7621801,
        ["7621803"] = self.OnSubStart7621803,
        ["7621804"] = self.OnSubStart7621804,
        ["7621802"] = self.OnSubStart7621802
    }
end

function Quest76218:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7621801"] = self.OnSubFinish7621801,
        ["7621803"] = self.OnSubFinish7621803,
        ["7621804"] = self.OnSubFinish7621804,
        ["7621802"] = self.OnSubFinish7621802
    }
end

function Quest76218:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7621802"] = self.OnSubFailed7621802}
end

function Quest76218:Start()
    print("Start")
end

function Quest76218:OnDestroy()
    print("OnDestroy")
end

function Quest76218:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76218:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76218:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7621802N1336Trigger")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 3)
    this:RecycleAllRes()
end

function Quest76218:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7621804Trigger", 76218)
end

function Quest76218:ActorDestroy(arg1, arg2)
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

function Quest76218:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76218:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76218:OnSubStart7621801(arg1)
    print("OnSubStart7621801")
    this:QuestNarratorTask(datas.NarratorWithId_7621801, nil)
    actorUtils.FinishQuestWithParam({false}, {7621801})
end

function Quest76218:OnSubFinish7621801(arg1)
    print("OnSubFinish7621801")
end

function Quest76218:OnSubStart7621803(arg1)
    print("OnSubStart7621803")
end

function Quest76218:OnSubFinish7621803(arg1)
    print("OnSubFinish7621803")
    this:SetNavigationByMainId(76218, true)
end

function Quest76218:OnSubStart7621804(arg1)
    print("OnSubStart7621804")
    actorMgr:CreateActorWithPos("Q7621804Trigger", "Actor/Gadget/Q7621804Trigger", 70900002, 0, points.Q7621804Trigger.pos, points.Q7621804Trigger.rot, true, false, 3, nil, 0, 76218)
end

function Quest76218:OnSubFinish7621804(arg1)
    print("OnSubFinish7621804")
    this:ClearNarratorTask()
end

function Quest76218:OnSubStart7621802(arg1)
    print("OnSubStart7621802")
    this:NpcCreateWithNpcTrigger(npcs.Npc1336.id, 0, 8, 7621802)
    this:GetQuestNpcActor(npcs.Npc1336.alias, 76218):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest76218:OnSubFinish7621802(arg1)
    print("OnSubFinish7621802")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc1336.alias)
        this:ShowTutorialDialog(2772, nil)
    end)
end

function Quest76218:OnSubFailed7621802(arg1)
    print("OnSubFailed7621802")
    this:RecycleAllRes()
end

return Quest76218
