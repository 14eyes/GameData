require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70550 = class("Quest70550", QuestActorProxy)
Quest70550.defaultAlias = "Quest70550"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70550:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70550:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7055001"] = self.OnSubStart7055001,
        ["7055002"] = self.OnSubStart7055002,
        ["7055003"] = self.OnSubStart7055003,
        ["7055004"] = self.OnSubStart7055004,
        ["7055005"] = self.OnSubStart7055005,
        ["7055006"] = self.OnSubStart7055006,
        ["7055007"] = self.OnSubStart7055007,
        ["7055008"] = self.OnSubStart7055008,
        ["7055009"] = self.OnSubStart7055009,
        ["7055010"] = self.OnSubStart7055010
    }
end

function Quest70550:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7055001"] = self.OnSubFinish7055001,
        ["7055002"] = self.OnSubFinish7055002,
        ["7055003"] = self.OnSubFinish7055003,
        ["7055004"] = self.OnSubFinish7055004,
        ["7055005"] = self.OnSubFinish7055005,
        ["7055006"] = self.OnSubFinish7055006,
        ["7055007"] = self.OnSubFinish7055007,
        ["7055008"] = self.OnSubFinish7055008,
        ["7055009"] = self.OnSubFinish7055009,
        ["7055010"] = self.OnSubFinish7055010
    }
end

function Quest70550:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7055002"] = self.OnSubFailed7055002,
        ["7055004"] = self.OnSubFailed7055004,
        ["7055006"] = self.OnSubFailed7055006,
        ["7055008"] = self.OnSubFailed7055008,
        ["7055010"] = self.OnSubFailed7055010
    }
end

function Quest70550:Start()
    print("Start")
end

function Quest70550:OnDestroy()
    print("OnDestroy")
end

function Quest70550:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70550:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70550:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q70550Trigger", nil)
    this:ActorDestroy("Q70550Trigger_1", nil)
    this:ActorDestroy("Q70550Trigger_2", nil)
    this:SafeDestroyQuestNpc(npcs.Npc10090.alias, 51205)
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70550:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q70550Trigger", nil)
    this:ActorDestroy("Q70550Trigger_1", nil)
    this:ActorDestroy("Q70550Trigger_2", nil)
end

function Quest70550:ActorDestroy(arg1, arg2)
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

function Quest70550:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70550:OnSubStart7055001(arg1)
    print("OnSubStart7055001")
    this:CreateQuestNpc(arg1, npcs.Npc10090.id, 0, false, 0)
end

function Quest70550:OnSubFinish7055001(arg1)
    print("OnSubFinish7055001")
end

function Quest70550:OnSubStart7055002(arg1)
    print("OnSubStart7055002")
    actorMgr:CreateActorWithPos("Q70550Trigger", "Actor/Gadget/Q70550Trigger", 70900002, 0, points._Q70550TriggerPoint_.pos, points._Q70550TriggerPoint_.rot, true, false, 51205, nil, 0, 70550)
end

function Quest70550:OnSubFinish7055002(arg1)
    print("OnSubFinish7055002")
    this:NpcDestroyImmediately(51205, npcs.Npc10090.alias)
end

function Quest70550:OnSubFailed7055002(arg1)
    print("OnSubFailed7055002")
    this:RecycleAllRes()
end

function Quest70550:OnSubStart7055003(arg1)
    print("OnSubStart7055003")
end

function Quest70550:OnSubFinish7055003(arg1)
    print("OnSubFinish7055003")
end

function Quest70550:OnSubStart7055004(arg1)
    print("OnSubStart7055004")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 51205 then
                actorUtils.StartCinePlay("Activity_BubbleDramaDrink_Klee_1")
            end
        end)
    end)
end

function Quest70550:OnSubFinish7055004(arg1)
    print("OnSubFinish7055004")
end

function Quest70550:OnSubFailed7055004(arg1)
    print("OnSubFailed7055004")
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70550:OnSubStart7055005(arg1)
    print("OnSubStart7055005")
end

function Quest70550:OnSubFinish7055005(arg1)
    print("OnSubFinish7055005")
end

function Quest70550:OnSubStart7055006(arg1)
    print("OnSubStart7055006")
    actorMgr:CreateActorWithPos("Q70550Trigger_1", "Actor/Gadget/Q70550Trigger_1", 70900002, 0, points._Q70550Trigger_1Point_.pos, points._Q70550Trigger_1Point_.rot, true, false, 51205, nil, 0, 70550)
end

function Quest70550:OnSubFinish7055006(arg1)
    print("OnSubFinish7055006")
    this:NpcDestroyImmediately(51205, npcs.Npc10090.alias)
end

function Quest70550:OnSubFailed7055006(arg1)
    print("OnSubFailed7055006")
    this:RecycleAllRes()
end

function Quest70550:OnSubStart7055007(arg1)
    print("OnSubStart7055007")
end

function Quest70550:OnSubFinish7055007(arg1)
    print("OnSubFinish7055007")
end

function Quest70550:OnSubStart7055008(arg1)
    print("OnSubStart7055008")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 51205 then
                actorUtils.StartCinePlay("Activity_BubbleDramaDrink_Klee_2")
            end
        end)
    end)
end

function Quest70550:OnSubFinish7055008(arg1)
    print("OnSubFinish7055008")
end

function Quest70550:OnSubFailed7055008(arg1)
    print("OnSubFailed7055008")
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70550:OnSubStart7055009(arg1)
    print("OnSubStart7055009")
end

function Quest70550:OnSubFinish7055009(arg1)
    print("OnSubFinish7055009")
end

function Quest70550:OnSubStart7055010(arg1)
    print("OnSubStart7055010")
    actorMgr:CreateActorWithPos("Q70550Trigger_2", "Actor/Gadget/Q70550Trigger_2", 70900002, 0, points._Q70550Trigger_2Point_.pos, points._Q70550Trigger_2Point_.rot, true, false, 51205, nil, 0, 70550)
end

function Quest70550:OnSubFinish7055010(arg1)
    print("OnSubFinish7055010")
    this:NpcDestroyImmediately(51205, npcs.Npc10090.alias)
end

function Quest70550:OnSubFailed7055010(arg1)
    print("OnSubFailed7055010")
    this:RecycleAllRes()
end

return Quest70550
