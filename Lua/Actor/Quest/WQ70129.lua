require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70129 = class("Quest70129", QuestActorProxy)
Quest70129.defaultAlias = "Quest70129"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70129:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70129:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7012901"] = self.OnSubStart7012901,
        ["7012902"] = self.OnSubStart7012902,
        ["7012903"] = self.OnSubStart7012903,
        ["7012904"] = self.OnSubStart7012904,
        ["7012905"] = self.OnSubStart7012905,
        ["7012906"] = self.OnSubStart7012906,
        ["7012907"] = self.OnSubStart7012907,
        ["7012908"] = self.OnSubStart7012908,
        ["7012909"] = self.OnSubStart7012909,
        ["7012910"] = self.OnSubStart7012910,
        ["7012913"] = self.OnSubStart7012913,
        ["7012911"] = self.OnSubStart7012911,
        ["7012912"] = self.OnSubStart7012912
    }
end

function Quest70129:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7012901"] = self.OnSubFinish7012901,
        ["7012902"] = self.OnSubFinish7012902,
        ["7012903"] = self.OnSubFinish7012903,
        ["7012904"] = self.OnSubFinish7012904,
        ["7012905"] = self.OnSubFinish7012905,
        ["7012906"] = self.OnSubFinish7012906,
        ["7012907"] = self.OnSubFinish7012907,
        ["7012908"] = self.OnSubFinish7012908,
        ["7012909"] = self.OnSubFinish7012909,
        ["7012910"] = self.OnSubFinish7012910,
        ["7012913"] = self.OnSubFinish7012913,
        ["7012911"] = self.OnSubFinish7012911,
        ["7012912"] = self.OnSubFinish7012912
    }
end

function Quest70129:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7012901"] = self.OnSubFailed7012901,
        ["7012902"] = self.OnSubFailed7012902,
        ["7012907"] = self.OnSubFailed7012907
    }
end

function Quest70129:Start()
    print("Start")
end

function Quest70129:OnDestroy()
    print("OnDestroy")
end

function Quest70129:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70129:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70129:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70129:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7012901Trigger", 70129)
end

function Quest70129:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1001 then
        actorUtils.FinishQuestWithParam({false}, {7012901})
    elseif arg1 == 1002 then
        actorUtils.FinishQuestWithParam({true}, {7012901})
    elseif arg1 == 2001 then
        actorUtils.FinishQuestWithParam({false}, {7012902})
    elseif arg1 == 3001 then
        actorUtils.FinishQuestWithParam({false}, {7012911})
    end
end

function Quest70129:ActorDestroy(arg1, arg2)
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

function Quest70129:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70129:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest70129:OnSubStart7012901(arg1)
    print("OnSubStart7012901")
    this:CreateQuestNpc(arg1, npcs.Npc22748_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22747_1.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7012901Trigger", "Actor/Gadget/Q7012901Trigger", 70900002, 0, points._Q7012901TriggerPoint_.pos, points._Q7012901TriggerPoint_.rot, true, false, 3, nil, 0, 70129)
end

function Quest70129:OnSubFinish7012901(arg1)
    print("OnSubFinish7012901")
    this:NpcDestroyImmediately(3, npcs.Npc22748_1.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22747_1.alias)
end

function Quest70129:OnSubFailed7012901(arg1)
    print("OnSubFailed7012901")
    this:RecycleAllRes()
end

function Quest70129:OnSubStart7012902(arg1)
    print("OnSubStart7012902")
end

function Quest70129:OnSubFinish7012902(arg1)
    print("OnSubFinish7012902")
end

function Quest70129:OnSubFailed7012902(arg1)
    print("OnSubFailed7012902")
    this:RecycleAllRes()
end

function Quest70129:OnSubStart7012903(arg1)
    print("OnSubStart7012903")
    this:CreateQuestNpc(arg1, npcs.Npc22748_1.id, 0, false, 0)
end

function Quest70129:OnSubFinish7012903(arg1)
    print("OnSubFinish7012903")
end

function Quest70129:OnSubStart7012904(arg1)
    print("OnSubStart7012904")
    this:CreateQuestNpc(arg1, npcs.Npc22748_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22747_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22763.id, 0, false, 0)
    actorUtils.FinishQuestWithParam({false}, {7012904})
end

function Quest70129:OnSubFinish7012904(arg1)
    print("OnSubFinish7012904")
    this:NpcDestroyWithDither(3, npcs.Npc22748_1.alias)
    this:RequestInteraction("Npc22763", "", true)
end

function Quest70129:OnSubStart7012905(arg1)
    print("OnSubStart7012905")
    this:CreateQuestNpc(arg1, npcs.Npc22747_1.id, 0, false, 0)
    this:NpcDestroyImmediately(3, npcs.Npc22763.alias)
end

function Quest70129:OnSubFinish7012905(arg1)
    print("OnSubFinish7012905")
end

function Quest70129:OnSubStart7012906(arg1)
    print("OnSubStart7012906")
    this:CreateQuestNpc(arg1, npcs.Npc22748_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22747_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22763.id, 0, false, 0)
    actorUtils.FinishQuestWithParam({false}, {7012906})
end

function Quest70129:OnSubFinish7012906(arg1)
    print("OnSubFinish7012906")
    this:RequestInteraction("Npc22763", "", true)
end

function Quest70129:OnSubStart7012907(arg1)
    print("OnSubStart7012907")
    this:CreateQuestNpc(arg1, npcs.Npc22747_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22748_1.id, 0, false, 0)
    this:NpcDestroyImmediately(3, npcs.Npc22763.alias)
end

function Quest70129:OnSubFinish7012907(arg1)
    print("OnSubFinish7012907")
end

function Quest70129:OnSubFailed7012907(arg1)
    print("OnSubFailed7012907")
    this:RecycleAllRes()
end

function Quest70129:OnSubStart7012908(arg1)
    print("OnSubStart7012908")
    actorUtils.FinishQuestWithParam({false}, {7012908})
end

function Quest70129:OnSubFinish7012908(arg1)
    print("OnSubFinish7012908")
end

function Quest70129:OnSubStart7012909(arg1)
    print("OnSubStart7012909")
    this:CreateQuestNpc(arg1, npcs.Npc22747_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22748_1.id, 0, false, 0)
    this:RequestInteraction("Npc22748_1", "", true)
end

function Quest70129:OnSubFinish7012909(arg1)
    print("OnSubFinish7012909")
    this:NpcDestroyImmediately(3, npcs.Npc22747_1.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22748_1.alias)
end

function Quest70129:OnSubStart7012910(arg1)
    print("OnSubStart7012910")
    this:CreateQuestNpc(arg1, npcs.Npc22747_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22748_1.id, 0, false, 0)
end

function Quest70129:OnSubFinish7012910(arg1)
    print("OnSubFinish7012910")
end

function Quest70129:OnSubStart7012913(arg1)
    print("OnSubStart7012913")
end

function Quest70129:OnSubFinish7012913(arg1)
    print("OnSubFinish7012913")
end

function Quest70129:OnSubStart7012911(arg1)
    print("OnSubStart7012911")
end

function Quest70129:OnSubFinish7012911(arg1)
    print("OnSubFinish7012911")
end

function Quest70129:OnSubStart7012912(arg1)
    print("OnSubStart7012912")
end

function Quest70129:OnSubFinish7012912(arg1)
    print("OnSubFinish7012912")
    this:RequestInteraction("Npc22763", "", true)
end

return Quest70129
