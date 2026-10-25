require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70552 = class("Quest70552", QuestActorProxy)
Quest70552.defaultAlias = "Quest70552"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70552:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70552:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7055201"] = self.OnSubStart7055201,
        ["7055202"] = self.OnSubStart7055202,
        ["7055203"] = self.OnSubStart7055203,
        ["7055204"] = self.OnSubStart7055204,
        ["7055205"] = self.OnSubStart7055205,
        ["7055206"] = self.OnSubStart7055206,
        ["7055207"] = self.OnSubStart7055207,
        ["7055208"] = self.OnSubStart7055208,
        ["7055209"] = self.OnSubStart7055209,
        ["7055210"] = self.OnSubStart7055210
    }
end

function Quest70552:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7055201"] = self.OnSubFinish7055201,
        ["7055202"] = self.OnSubFinish7055202,
        ["7055203"] = self.OnSubFinish7055203,
        ["7055204"] = self.OnSubFinish7055204,
        ["7055205"] = self.OnSubFinish7055205,
        ["7055206"] = self.OnSubFinish7055206,
        ["7055207"] = self.OnSubFinish7055207,
        ["7055208"] = self.OnSubFinish7055208,
        ["7055209"] = self.OnSubFinish7055209,
        ["7055210"] = self.OnSubFinish7055210
    }
end

function Quest70552:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7055202"] = self.OnSubFailed7055202,
        ["7055204"] = self.OnSubFailed7055204,
        ["7055206"] = self.OnSubFailed7055206,
        ["7055208"] = self.OnSubFailed7055208,
        ["7055210"] = self.OnSubFailed7055210
    }
end

function Quest70552:Start()
    print("Start")
end

function Quest70552:OnDestroy()
    print("OnDestroy")
end

function Quest70552:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70552:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70552:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q70552Trigger", nil)
    this:ActorDestroy("Q70552Trigger_1", nil)
    this:ActorDestroy("Q70552Trigger_2", nil)
    this:SafeDestroyQuestNpc(npcs.Npc1029.alias, 51207)
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70552:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q70552Trigger", nil)
    this:ActorDestroy("Q70552Trigger_1", nil)
    this:ActorDestroy("Q70552Trigger_2", nil)
end

function Quest70552:ActorDestroy(arg1, arg2)
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

function Quest70552:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70552:OnSubStart7055201(arg1)
    print("OnSubStart7055201")
    this:CreateQuestNpc(arg1, npcs.Npc1029.id, 0, false, 0)
end

function Quest70552:OnSubFinish7055201(arg1)
    print("OnSubFinish7055201")
end

function Quest70552:OnSubStart7055202(arg1)
    print("OnSubStart7055202")
    actorMgr:CreateActorWithPos("Q70552Trigger", "Actor/Gadget/Q70552Trigger", 70900002, 0, points._Q70552TriggerPoint_.pos, points._Q70552TriggerPoint_.rot, true, false, 51207, nil, 0, 70552)
end

function Quest70552:OnSubFinish7055202(arg1)
    print("OnSubFinish7055202")
end

function Quest70552:OnSubFailed7055202(arg1)
    print("OnSubFailed7055202")
    this:RecycleAllRes()
end

function Quest70552:OnSubStart7055203(arg1)
    print("OnSubStart7055203")
end

function Quest70552:OnSubFinish7055203(arg1)
    print("OnSubFinish7055203")
end

function Quest70552:OnSubStart7055204(arg1)
    print("OnSubStart7055204")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 51207 then
                actorUtils.StartCinePlay("Activity_BubbleDramaDrink_Eula_1")
            end
        end)
    end)
end

function Quest70552:OnSubFinish7055204(arg1)
    print("OnSubFinish7055204")
end

function Quest70552:OnSubFailed7055204(arg1)
    print("OnSubFailed7055204")
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70552:OnSubStart7055205(arg1)
    print("OnSubStart7055205")
end

function Quest70552:OnSubFinish7055205(arg1)
    print("OnSubFinish7055205")
end

function Quest70552:OnSubStart7055206(arg1)
    print("OnSubStart7055206")
    actorMgr:CreateActorWithPos("Q70552Trigger_1", "Actor/Gadget/Q70552Trigger_1", 70900002, 0, points._Q70552Trigger_1Point_.pos, points._Q70552Trigger_1Point_.rot, true, false, 51207, nil, 0, 70552)
end

function Quest70552:OnSubFinish7055206(arg1)
    print("OnSubFinish7055206")
end

function Quest70552:OnSubFailed7055206(arg1)
    print("OnSubFailed7055206")
    this:RecycleAllRes()
end

function Quest70552:OnSubStart7055207(arg1)
    print("OnSubStart7055207")
end

function Quest70552:OnSubFinish7055207(arg1)
    print("OnSubFinish7055207")
end

function Quest70552:OnSubStart7055208(arg1)
    print("OnSubStart7055208")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 51207 then
                actorUtils.StartCinePlay("Activity_BubbleDramaDrink_Eula_2")
            end
        end)
    end)
end

function Quest70552:OnSubFinish7055208(arg1)
    print("OnSubFinish7055208")
end

function Quest70552:OnSubFailed7055208(arg1)
    print("OnSubFailed7055208")
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70552:OnSubStart7055209(arg1)
    print("OnSubStart7055209")
end

function Quest70552:OnSubFinish7055209(arg1)
    print("OnSubFinish7055209")
end

function Quest70552:OnSubStart7055210(arg1)
    print("OnSubStart7055210")
    actorMgr:CreateActorWithPos("Q70552Trigger_2", "Actor/Gadget/Q70552Trigger_2", 70900002, 0, points._Q70552Trigger_2Point_.pos, points._Q70552Trigger_2Point_.rot, true, false, 51207, nil, 0, 70552)
end

function Quest70552:OnSubFinish7055210(arg1)
    print("OnSubFinish7055210")
    this:NpcDestroyImmediately(51207, npcs.Npc1029.alias)
end

function Quest70552:OnSubFailed7055210(arg1)
    print("OnSubFailed7055210")
    this:RecycleAllRes()
end

return Quest70552
