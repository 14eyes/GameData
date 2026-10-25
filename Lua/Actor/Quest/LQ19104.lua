require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19104 = class("Quest19104", QuestActorProxy)
Quest19104.defaultAlias = "Quest19104"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19104:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19104:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1910401"] = self.OnSubStart1910401,
        ["1910417"] = self.OnSubStart1910417,
        ["1910402"] = self.OnSubStart1910402,
        ["1910403"] = self.OnSubStart1910403,
        ["1910404"] = self.OnSubStart1910404,
        ["1910405"] = self.OnSubStart1910405,
        ["1910418"] = self.OnSubStart1910418,
        ["1910406"] = self.OnSubStart1910406,
        ["1910407"] = self.OnSubStart1910407,
        ["1910408"] = self.OnSubStart1910408,
        ["1910409"] = self.OnSubStart1910409,
        ["1910410"] = self.OnSubStart1910410,
        ["1910411"] = self.OnSubStart1910411,
        ["1910412"] = self.OnSubStart1910412,
        ["1910413"] = self.OnSubStart1910413,
        ["1910414"] = self.OnSubStart1910414,
        ["1910415"] = self.OnSubStart1910415,
        ["1910416"] = self.OnSubStart1910416
    }
end

function Quest19104:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1910401"] = self.OnSubFinish1910401,
        ["1910417"] = self.OnSubFinish1910417,
        ["1910402"] = self.OnSubFinish1910402,
        ["1910403"] = self.OnSubFinish1910403,
        ["1910404"] = self.OnSubFinish1910404,
        ["1910405"] = self.OnSubFinish1910405,
        ["1910418"] = self.OnSubFinish1910418,
        ["1910406"] = self.OnSubFinish1910406,
        ["1910407"] = self.OnSubFinish1910407,
        ["1910408"] = self.OnSubFinish1910408,
        ["1910409"] = self.OnSubFinish1910409,
        ["1910410"] = self.OnSubFinish1910410,
        ["1910411"] = self.OnSubFinish1910411,
        ["1910412"] = self.OnSubFinish1910412,
        ["1910413"] = self.OnSubFinish1910413,
        ["1910414"] = self.OnSubFinish1910414,
        ["1910415"] = self.OnSubFinish1910415,
        ["1910416"] = self.OnSubFinish1910416
    }
end

function Quest19104:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1910401"] = self.OnSubFailed1910401,
        ["1910417"] = self.OnSubFailed1910417,
        ["1910402"] = self.OnSubFailed1910402,
        ["1910403"] = self.OnSubFailed1910403,
        ["1910404"] = self.OnSubFailed1910404,
        ["1910405"] = self.OnSubFailed1910405,
        ["1910418"] = self.OnSubFailed1910418,
        ["1910406"] = self.OnSubFailed1910406,
        ["1910407"] = self.OnSubFailed1910407,
        ["1910408"] = self.OnSubFailed1910408,
        ["1910409"] = self.OnSubFailed1910409,
        ["1910410"] = self.OnSubFailed1910410,
        ["1910411"] = self.OnSubFailed1910411,
        ["1910412"] = self.OnSubFailed1910412,
        ["1910413"] = self.OnSubFailed1910413,
        ["1910414"] = self.OnSubFailed1910414,
        ["1910415"] = self.OnSubFailed1910415,
        ["1910416"] = self.OnSubFailed1910416
    }
end

function Quest19104:Start()
    print("Start")
end

function Quest19104:OnDestroy()
    print("OnDestroy")
end

function Quest19104:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19104:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19104:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc1539Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1537Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc153901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc153701Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10807Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10808Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10809Data.alias, 3)
    self:ActorDestroy("Q1910402Trigger")
    self:ActorDestroy("Q1910403Trigger")
    self:ActorDestroy("Q1910404Trigger")
    self:ActorDestroy("Q1910405Trigger")
    self:ActorDestroy("Q1910407Trigger")
    self:ActorDestroy("Q1910409Trigger")
    self:ActorDestroy("Q1910401Trigger")
    self:ActorDestroy("Q191040101Trigger")
end

function Quest19104:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19104:OnSubStart1910401(arg1)
    print("OnSubStart1910401")
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc153901Data.id, 2)
    actorMgr:CreateActorWithPos("Q191040101Trigger", "Actor/Gadget/Q191040101Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Diona09").pos, sceneData:GetDummyPoint(3, "COOP103901Diona09").rot, true, false, 3)
end

function Quest19104:OnSubFinish1910401(arg1)
    print("OnSubFinish1910401")
end

function Quest19104:OnSubFailed1910401(arg1)
    print("OnSubFailed1910401")
end

function Quest19104:OnSubStart1910402(arg1)
    print("OnSubStart1910402")
    self:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
    actorMgr:CreateActorWithPos("Q1910402Trigger", "Actor/Gadget/Q1910402Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Qianxing01_02").pos, sceneData:GetDummyPoint(3, "COOP103901Qianxing01_02").rot, true, false, 3)
end

function Quest19104:OnSubFinish1910402(arg1)
    print("OnSubFinish1910402")
end

function Quest19104:OnSubFailed1910402(arg1)
    print("OnSubFailed1910402")
end

function Quest19104:OnSubStart1910403(arg1)
    print("OnSubStart1910403")
    self:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1910403Trigger", "Actor/Gadget/Q1910403Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Qianxing02_02").pos, sceneData:GetDummyPoint(3, "COOP103901Qianxing02_02").rot, true, false, 3)
end

function Quest19104:OnSubFinish1910403(arg1)
    print("OnSubFinish1910403")
end

function Quest19104:OnSubFailed1910403(arg1)
    print("OnSubFailed1910403")
end

function Quest19104:OnSubStart1910404(arg1)
    print("OnSubStart1910404")
    self:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1910404Trigger", "Actor/Gadget/Q1910404Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Qianxing03_02").pos, sceneData:GetDummyPoint(3, "COOP103901Qianxing03_02").rot, true, false, 3)
end

function Quest19104:OnSubFinish1910404(arg1)
    print("OnSubFinish1910404")
end

function Quest19104:OnSubFailed1910404(arg1)
    print("OnSubFailed1910404")
end

function Quest19104:OnSubStart1910405(arg1)
    print("OnSubStart1910405")
    self:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1910405Trigger", "Actor/Gadget/Q1910405Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Qianxing04_01").pos, sceneData:GetDummyPoint(3, "COOP103901Qianxing04_01").rot, true, false, 3)
end

function Quest19104:OnSubFinish1910405(arg1)
    print("OnSubFinish1910405")
end

function Quest19104:OnSubFailed1910405(arg1)
    print("OnSubFailed1910405")
end

function Quest19104:OnSubStart1910406(arg1)
    print("OnSubStart1910406")
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910402)
    self:RequestInteraction(npcs.Coop_DionaData.alias)
    self:ActorDestroy("Q1910401Trigger")
end

function Quest19104:OnSubFinish1910406(arg1)
    print("OnSubFinish1910406")
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
end

function Quest19104:OnSubFailed1910406(arg1)
    print("OnSubFailed1910406")
end

function Quest19104:OnSubStart1910407(arg1)
    print("OnSubStart1910407")
    self:CreateQuestNpc(arg1, npcs.Npc153901Data.id, 2)
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc153701Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc153701Data.alias):DoFreeStyle(1240, true, nil, true, true)
    self:NotifyTo(npcs.Npc1537Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1910407Trigger", "Actor/Gadget/Q1910407Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Draff01_01").pos, sceneData:GetDummyPoint(3, "COOP103901Draff01_01").rot, true, false)
end

function Quest19104:OnSubFinish1910407(arg1)
    print("OnSubFinish1910407")
end

function Quest19104:OnSubFailed1910407(arg1)
    print("OnSubFailed1910407")
end

function Quest19104:OnSubStart1910408(arg1)
    print("OnSubStart1910408")
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1537Data.alias, 1, true)
    self:ShowBlackScreen(0.5, 1, 0, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc153701Data.alias):DoFreeStateTrigger()
        arg1:RequestCoopInteractionFromSubStartPoint(103901, 1910403)
        arg1:RequestInteraction(npcs.Npc153701Data.alias)
    end, nil, nil, "")
end

function Quest19104:OnSubFinish1910408(arg1)
    print("OnSubFinish1910408")
end

function Quest19104:OnSubFailed1910408(arg1)
    print("OnSubFailed1910408")
end

function Quest19104:OnSubStart1910409(arg1)
    print("OnSubStart1910409")
    self:CreateQuestNpc(arg1, npcs.Npc153901Data.id, 2)
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1537Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910404)
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc153701Data.alias, 3)
    actorMgr:CreateActorWithPos("Q1910409Trigger", "Actor/Gadget/Q1910409Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Allan01_01").pos, sceneData:GetDummyPoint(3, "COOP103901Allan01_01").rot, true, false, 3)
end

function Quest19104:OnSubFinish1910409(arg1)
    print("OnSubFinish1910409")
    self:SafeDestroyQuestNpc(npcs.Npc153901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc153701Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1539Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1537Data.alias, 0, true)
end

function Quest19104:OnSubFailed1910409(arg1)
    print("OnSubFailed1910409")
end

function Quest19104:OnSubStart1910410(arg1)
    print("OnSubStart1910410")
    self:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910405)
end

function Quest19104:OnSubFinish1910410(arg1)
    print("OnSubFinish1910410")
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
end

function Quest19104:OnSubFailed1910410(arg1)
    print("OnSubFailed1910410")
end

function Quest19104:OnSubStart1910411(arg1)
    print("OnSubStart1910411")
    self:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc153901Data.id, 2)
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc153701Data.id, 3)
    self:NotifyTo(npcs.Npc1537Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc10807Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc10808Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc10809Data.id, 6)
end

function Quest19104:OnSubFinish1910411(arg1)
    print("OnSubFinish1910411")
    self:SafeDestroyQuestNpc(npcs.Npc10807Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10808Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10809Data.alias, 3)
end

function Quest19104:OnSubFailed1910411(arg1)
    print("OnSubFailed1910411")
end

function Quest19104:OnSubStart1910412(arg1)
    print("OnSubStart1910412")
end

function Quest19104:OnSubFinish1910412(arg1)
    print("OnSubFinish1910412")
end

function Quest19104:OnSubFailed1910412(arg1)
    print("OnSubFailed1910412")
end

function Quest19104:OnSubStart1910413(arg1)
    print("OnSubStart1910413")
end

function Quest19104:OnSubFinish1910413(arg1)
    print("OnSubFinish1910413")
end

function Quest19104:OnSubFailed1910413(arg1)
    print("OnSubFailed1910413")
end

function Quest19104:OnSubStart1910414(arg1)
    print("OnSubStart1910414")
end

function Quest19104:OnSubFinish1910414(arg1)
    print("OnSubFinish1910414")
end

function Quest19104:OnSubFailed1910414(arg1)
    print("OnSubFailed1910414")
end

function Quest19104:OnSubStart1910415(arg1)
    print("OnSubStart1910415")
    self:RemoveCoopInteractionDataFromSubStartPoint(103901, 1910401)
    self:NarratorOnlyTaskByData(datas.Q19104FailNarratorWithId)
    self:CallDelay(3, function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1)
        arg1_2:FinishQuestID(false, 1910415)
    end)
end

function Quest19104:OnSubFinish1910415(arg1)
    print("OnSubFinish1910415")
end

function Quest19104:OnSubFailed1910415(arg1)
    print("OnSubFailed1910415")
end

function Quest19104:OnSubStart1910416(arg1)
    print("OnSubStart1910416")
end

function Quest19104:OnSubFinish1910416(arg1)
    print("OnSubFinish1910416")
end

function Quest19104:OnSubFailed1910416(arg1)
    print("OnSubFailed1910416")
end

function Quest19104:OnSubStart1910417(arg1)
    print("OnSubStart1910417")
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910401)
end

function Quest19104:OnSubFinish1910417(arg1)
    print("OnSubFinish1910417")
    actorMgr:CreateActorWithPos("Q1910401Trigger", "Actor/Gadget/Q1910401Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Qianxing02_01 ").pos, sceneData:GetDummyPoint(3, "COOP103901Qianxing02_01 ").rot, true, false, 3)
end

function Quest19104:OnSubFailed1910417(arg1)
    print("OnSubFailed1910417")
    self:RemoveCoopInteractionDataFromSubStartPoint(103901, 1910401)
end

function Quest19104:OnSubStart1910418(arg1)
    print("OnSubStart1910418")
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910406)
end

function Quest19104:OnSubFinish1910418(arg1)
    print("OnSubFinish1910418")
end

function Quest19104:OnSubFailed1910418(arg1)
    print("OnSubFailed1910418")
end

return Quest19104
