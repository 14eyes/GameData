require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70551 = class("Quest70551", QuestActorProxy)
Quest70551.defaultAlias = "Quest70551"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70551:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70551:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7055101"] = self.OnSubStart7055101,
        ["7055102"] = self.OnSubStart7055102,
        ["7055103"] = self.OnSubStart7055103,
        ["7055104"] = self.OnSubStart7055104,
        ["7055105"] = self.OnSubStart7055105,
        ["7055106"] = self.OnSubStart7055106,
        ["7055107"] = self.OnSubStart7055107,
        ["7055108"] = self.OnSubStart7055108,
        ["7055109"] = self.OnSubStart7055109,
        ["7055110"] = self.OnSubStart7055110
    }
end

function Quest70551:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7055101"] = self.OnSubFinish7055101,
        ["7055102"] = self.OnSubFinish7055102,
        ["7055103"] = self.OnSubFinish7055103,
        ["7055104"] = self.OnSubFinish7055104,
        ["7055105"] = self.OnSubFinish7055105,
        ["7055106"] = self.OnSubFinish7055106,
        ["7055107"] = self.OnSubFinish7055107,
        ["7055108"] = self.OnSubFinish7055108,
        ["7055109"] = self.OnSubFinish7055109,
        ["7055110"] = self.OnSubFinish7055110
    }
end

function Quest70551:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7055102"] = self.OnSubFailed7055102,
        ["7055104"] = self.OnSubFailed7055104,
        ["7055106"] = self.OnSubFailed7055106,
        ["7055108"] = self.OnSubFailed7055108,
        ["7055110"] = self.OnSubFailed7055110
    }
end

function Quest70551:Start()
    print("Start")
end

function Quest70551:OnDestroy()
    print("OnDestroy")
end

function Quest70551:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70551:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70551:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q70551Trigger", nil)
    this:ActorDestroy("Q70551Trigger_1", nil)
    this:ActorDestroy("Q70551Trigger_2", nil)
    this:SafeDestroyQuestNpc(npcs.Npc1090.alias, 51206)
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70551:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q70551Trigger", nil)
    this:ActorDestroy("Q70551Trigger_1", nil)
    this:ActorDestroy("Q70551Trigger_2", nil)
end

function Quest70551:ActorDestroy(arg1, arg2)
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

function Quest70551:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70551:OnSubStart7055101(arg1)
    print("OnSubStart7055101")
    this:CreateQuestNpc(arg1, npcs.Npc1090.id, 0, false, 0)
end

function Quest70551:OnSubFinish7055101(arg1)
    print("OnSubFinish7055101")
end

function Quest70551:OnSubStart7055102(arg1)
    print("OnSubStart7055102")
    actorMgr:CreateActorWithPos("Q70551Trigger", "Actor/Gadget/Q70551Trigger", 70900002, 0, points._Q70551TriggerPoint_.pos, points._Q70551TriggerPoint_.rot, true, false, 51206, nil, 0, 70551)
end

function Quest70551:OnSubFinish7055102(arg1)
    print("OnSubFinish7055102")
end

function Quest70551:OnSubFailed7055102(arg1)
    print("OnSubFailed7055102")
    this:RecycleAllRes()
end

function Quest70551:OnSubStart7055103(arg1)
    print("OnSubStart7055103")
end

function Quest70551:OnSubFinish7055103(arg1)
    print("OnSubFinish7055103")
end

function Quest70551:OnSubStart7055104(arg1)
    print("OnSubStart7055104")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 51206 then
                actorUtils.StartCinePlay("Activity_BubbleDramaDrink_Emilie_1")
            end
        end)
    end)
end

function Quest70551:OnSubFinish7055104(arg1)
    print("OnSubFinish7055104")
end

function Quest70551:OnSubFailed7055104(arg1)
    print("OnSubFailed7055104")
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70551:OnSubStart7055105(arg1)
    print("OnSubStart7055105")
end

function Quest70551:OnSubFinish7055105(arg1)
    print("OnSubFinish7055105")
end

function Quest70551:OnSubStart7055106(arg1)
    print("OnSubStart7055106")
    actorMgr:CreateActorWithPos("Q70551Trigger_1", "Actor/Gadget/Q70551Trigger_1", 70900002, 0, points._Q70551Trigger_1Point_.pos, points._Q70551Trigger_1Point_.rot, true, false, 51206, nil, 0, 70551)
end

function Quest70551:OnSubFinish7055106(arg1)
    print("OnSubFinish7055106")
end

function Quest70551:OnSubFailed7055106(arg1)
    print("OnSubFailed7055106")
    this:RecycleAllRes()
end

function Quest70551:OnSubStart7055107(arg1)
    print("OnSubStart7055107")
end

function Quest70551:OnSubFinish7055107(arg1)
    print("OnSubFinish7055107")
end

function Quest70551:OnSubStart7055108(arg1)
    print("OnSubStart7055108")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 51206 then
                actorUtils.StartCinePlay("Activity_BubbleDramaDrink_Emilie_2")
            end
        end)
    end)
end

function Quest70551:OnSubFinish7055108(arg1)
    print("OnSubFinish7055108")
end

function Quest70551:OnSubFailed7055108(arg1)
    print("OnSubFailed7055108")
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70551:OnSubStart7055109(arg1)
    print("OnSubStart7055109")
end

function Quest70551:OnSubFinish7055109(arg1)
    print("OnSubFinish7055109")
end

function Quest70551:OnSubStart7055110(arg1)
    print("OnSubStart7055110")
    actorMgr:CreateActorWithPos("Q70551Trigger_2", "Actor/Gadget/Q70551Trigger_2", 70900002, 0, points._Q70551Trigger_2Point_.pos, points._Q70551Trigger_2Point_.rot, true, false, 51206, nil, 0, 70551)
end

function Quest70551:OnSubFinish7055110(arg1)
    print("OnSubFinish7055110")
    this:NpcDestroyImmediately(51206, npcs.Npc1090.alias)
end

function Quest70551:OnSubFailed7055110(arg1)
    print("OnSubFailed7055110")
    this:RecycleAllRes()
end

return Quest70551
