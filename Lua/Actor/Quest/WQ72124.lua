require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72124 = class("Quest72124", QuestActorProxy)
Quest72124.defaultAlias = "Quest72124"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72124:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72124:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7212401"] = self.OnSubStart7212401,
        ["7212402"] = self.OnSubStart7212402,
        ["7212423"] = self.OnSubStart7212423,
        ["7212403"] = self.OnSubStart7212403,
        ["7212404"] = self.OnSubStart7212404,
        ["7212405"] = self.OnSubStart7212405,
        ["7212406"] = self.OnSubStart7212406,
        ["7212407"] = self.OnSubStart7212407,
        ["7212408"] = self.OnSubStart7212408,
        ["7212425"] = self.OnSubStart7212425,
        ["7212409"] = self.OnSubStart7212409,
        ["7212410"] = self.OnSubStart7212410,
        ["7212424"] = self.OnSubStart7212424,
        ["7212411"] = self.OnSubStart7212411,
        ["7212412"] = self.OnSubStart7212412,
        ["7212413"] = self.OnSubStart7212413,
        ["7212414"] = self.OnSubStart7212414,
        ["7212426"] = self.OnSubStart7212426,
        ["7212415"] = self.OnSubStart7212415,
        ["7212416"] = self.OnSubStart7212416,
        ["7212417"] = self.OnSubStart7212417,
        ["7212418"] = self.OnSubStart7212418,
        ["7212419"] = self.OnSubStart7212419,
        ["7212420"] = self.OnSubStart7212420,
        ["7212421"] = self.OnSubStart7212421,
        ["7212422"] = self.OnSubStart7212422,
        ["7212427"] = self.OnSubStart7212427
    }
end

function Quest72124:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7212401"] = self.OnSubFinish7212401,
        ["7212402"] = self.OnSubFinish7212402,
        ["7212423"] = self.OnSubFinish7212423,
        ["7212403"] = self.OnSubFinish7212403,
        ["7212404"] = self.OnSubFinish7212404,
        ["7212405"] = self.OnSubFinish7212405,
        ["7212406"] = self.OnSubFinish7212406,
        ["7212407"] = self.OnSubFinish7212407,
        ["7212408"] = self.OnSubFinish7212408,
        ["7212425"] = self.OnSubFinish7212425,
        ["7212409"] = self.OnSubFinish7212409,
        ["7212410"] = self.OnSubFinish7212410,
        ["7212424"] = self.OnSubFinish7212424,
        ["7212411"] = self.OnSubFinish7212411,
        ["7212412"] = self.OnSubFinish7212412,
        ["7212413"] = self.OnSubFinish7212413,
        ["7212414"] = self.OnSubFinish7212414,
        ["7212426"] = self.OnSubFinish7212426,
        ["7212415"] = self.OnSubFinish7212415,
        ["7212416"] = self.OnSubFinish7212416,
        ["7212417"] = self.OnSubFinish7212417,
        ["7212418"] = self.OnSubFinish7212418,
        ["7212419"] = self.OnSubFinish7212419,
        ["7212420"] = self.OnSubFinish7212420,
        ["7212421"] = self.OnSubFinish7212421,
        ["7212422"] = self.OnSubFinish7212422,
        ["7212427"] = self.OnSubFinish7212427
    }
end

function Quest72124:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7212401"] = self.OnSubFailed7212401,
        ["7212402"] = self.OnSubFailed7212402,
        ["7212423"] = self.OnSubFailed7212423,
        ["7212403"] = self.OnSubFailed7212403,
        ["7212404"] = self.OnSubFailed7212404,
        ["7212405"] = self.OnSubFailed7212405,
        ["7212406"] = self.OnSubFailed7212406,
        ["7212407"] = self.OnSubFailed7212407,
        ["7212408"] = self.OnSubFailed7212408,
        ["7212425"] = self.OnSubFailed7212425,
        ["7212409"] = self.OnSubFailed7212409,
        ["7212410"] = self.OnSubFailed7212410,
        ["7212424"] = self.OnSubFailed7212424,
        ["7212411"] = self.OnSubFailed7212411,
        ["7212412"] = self.OnSubFailed7212412,
        ["7212413"] = self.OnSubFailed7212413,
        ["7212414"] = self.OnSubFailed7212414,
        ["7212426"] = self.OnSubFailed7212426,
        ["7212415"] = self.OnSubFailed7212415,
        ["7212416"] = self.OnSubFailed7212416,
        ["7212417"] = self.OnSubFailed7212417,
        ["7212418"] = self.OnSubFailed7212418,
        ["7212419"] = self.OnSubFailed7212419,
        ["7212420"] = self.OnSubFailed7212420,
        ["7212421"] = self.OnSubFailed7212421,
        ["7212422"] = self.OnSubFailed7212422,
        ["7212427"] = self.OnSubFailed7212427
    }
end

function Quest72124:Start()
    print("Start")
end

function Quest72124:OnDestroy()
    print("OnDestroy")
end

function Quest72124:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72124:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72124:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72124:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72124:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72124:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest72124:OnSubStart7212401(arg1)
    print("OnSubStart7212401")
end

function Quest72124:OnSubFinish7212401(arg1)
    print("OnSubFinish7212401")
end

function Quest72124:OnSubFailed7212401(arg1)
    print("OnSubFailed7212401")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc3164Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc3164Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    end, nil, nil, "", false, true)
end

function Quest72124:OnSubStart7212402(arg1)
    print("OnSubStart7212402")
end

function Quest72124:OnSubFinish7212402(arg1)
    print("OnSubFinish7212402")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:RequestInteraction(npcs.Npc3164Data.alias)
        end)
    end, nil, "", false, true)
end

function Quest72124:OnSubFailed7212402(arg1)
    print("OnSubFailed7212402")
end

function Quest72124:OnSubStart7212423(arg1)
    print("OnSubStart7212423")
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc3164Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc3164Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    end)
end

function Quest72124:OnSubFinish7212423(arg1)
    print("OnSubFinish7212423")
    self:DestroyQuestNpcActor(npcs.Npc3164Data.alias, 3)
end

function Quest72124:OnSubFailed7212423(arg1)
    print("OnSubFailed7212423")
end

function Quest72124:OnSubStart7212403(arg1)
    print("OnSubStart7212403")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3164Data.alias, 1, true)
    end)
end

function Quest72124:OnSubFinish7212403(arg1)
    print("OnSubFinish7212403")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest72124:OnSubFailed7212403(arg1)
    print("OnSubFailed7212403")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest72124:OnSubStart7212404(arg1)
    print("OnSubStart7212404")
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc3164Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc3164Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    end)
end

function Quest72124:OnSubFinish7212404(arg1)
    print("OnSubFinish7212404")
end

function Quest72124:OnSubFailed7212404(arg1)
    print("OnSubFailed7212404")
end

function Quest72124:OnSubStart7212405(arg1)
    print("OnSubStart7212405")
    self:GetQuestNpcActor(npcs.Npc3164Data.alias):DoFreeStyle(1, true, nil, true, true, false)
end

function Quest72124:OnSubFinish7212405(arg1)
    print("OnSubFinish7212405")
end

function Quest72124:OnSubFailed7212405(arg1)
    print("OnSubFailed7212405")
end

function Quest72124:OnSubStart7212406(arg1)
    print("OnSubStart7212406")
    self:GetQuestNpcActor(npcs.Npc3164Data.alias):DoFreeStyle(1, true, nil, true, true, false)
end

function Quest72124:OnSubFinish7212406(arg1)
    print("OnSubFinish7212406")
end

function Quest72124:OnSubFailed7212406(arg1)
    print("OnSubFailed7212406")
end

function Quest72124:OnSubStart7212407(arg1)
    print("OnSubStart7212407")
    self:GetQuestNpcActor(npcs.Npc3164Data.alias):DoFreeStyle(1, true, nil, true, true, false)
end

function Quest72124:OnSubFinish7212407(arg1)
    print("OnSubFinish7212407")
end

function Quest72124:OnSubFailed7212407(arg1)
    print("OnSubFailed7212407")
end

function Quest72124:OnSubStart7212408(arg1)
    print("OnSubStart7212408")
    self:GetQuestNpcActor(npcs.Npc3164Data.alias):DoFreeStyle(1, true, nil, true, true, false)
end

function Quest72124:OnSubFinish7212408(arg1)
    print("OnSubFinish7212408")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest72124:OnSubFailed7212408(arg1)
    print("OnSubFailed7212408")
end

function Quest72124:OnSubStart7212425(arg1)
    print("OnSubStart7212425")
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc3164Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc3164Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    end)
end

function Quest72124:OnSubFinish7212425(arg1)
    print("OnSubFinish7212425")
    self:DestroyQuestNpcActor(npcs.Npc3164Data.alias, 3)
end

function Quest72124:OnSubFailed7212425(arg1)
    print("OnSubFailed7212425")
end

function Quest72124:OnSubStart7212409(arg1)
    print("OnSubStart7212409")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3164Data.alias, 1, true)
    end)
end

function Quest72124:OnSubFinish7212409(arg1)
    print("OnSubFinish7212409")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest72124:OnSubFailed7212409(arg1)
    print("OnSubFailed7212409")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest72124:OnSubStart7212410(arg1)
    print("OnSubStart7212410")
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc3164Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc3164Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    end)
end

function Quest72124:OnSubFinish7212410(arg1)
    print("OnSubFinish7212410")
end

function Quest72124:OnSubFailed7212410(arg1)
    print("OnSubFailed7212410")
end

function Quest72124:OnSubStart7212424(arg1)
    print("OnSubStart7212424")
    self:GetQuestNpcActor(npcs.Npc3164Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    globalActor:EnablePlayerInput(false)
    local paimonData = npcs.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local n = 1.5
    local avatarForward = actorUtils.GetAvatarForward()
    local v = avatarForward.z / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    local n2 = -avatarForward.x / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    avatarPos.x = avatarPos.x + v * n
    avatarPos.z = avatarPos.z + n2 * n
    self:CreateQuestNpcByIdWithPos(7212424, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(avatarForward))
    self:RequestInteraction(npcs.PaimonData.alias)
    globalActor:EnablePlayerInput(true)
end

function Quest72124:OnSubFinish7212424(arg1)
    print("OnSubFinish7212424")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72124:OnSubFailed7212424(arg1)
    print("OnSubFailed7212424")
end

function Quest72124:OnSubStart7212411(arg1)
    print("OnSubStart7212411")
    self:GetQuestNpcActor(npcs.Npc3164Data.alias):DoFreeStyle(1, true, nil, true, true, false)
end

function Quest72124:OnSubFinish7212411(arg1)
    print("OnSubFinish7212411")
end

function Quest72124:OnSubFailed7212411(arg1)
    print("OnSubFailed7212411")
end

function Quest72124:OnSubStart7212412(arg1)
    print("OnSubStart7212412")
    self:GetQuestNpcActor(npcs.Npc3164Data.alias):DoFreeStyle(1, true, nil, true, true, false)
end

function Quest72124:OnSubFinish7212412(arg1)
    print("OnSubFinish7212412")
end

function Quest72124:OnSubFailed7212412(arg1)
    print("OnSubFailed7212412")
end

function Quest72124:OnSubStart7212413(arg1)
    print("OnSubStart7212413")
    self:GetQuestNpcActor(npcs.Npc3164Data.alias):DoFreeStyle(1, true, nil, true, true, false)
end

function Quest72124:OnSubFinish7212413(arg1)
    print("OnSubFinish7212413")
end

function Quest72124:OnSubFailed7212413(arg1)
    print("OnSubFailed7212413")
end

function Quest72124:OnSubStart7212414(arg1)
    print("OnSubStart7212414")
end

function Quest72124:OnSubFinish7212414(arg1)
    print("OnSubFinish7212414")
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        arg1:NpcDestroy(npcs.Npc3164Data.alias, 0)
        arg1:NotifyTo(npcs.Npc3164Data.alias, 1, true)
    end, nil, nil, "", false, true)
end

function Quest72124:OnSubFailed7212414(arg1)
    print("OnSubFailed7212414")
end

function Quest72124:OnSubStart7212426(arg1)
    print("OnSubStart7212426")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc3174Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc3174Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    end)
end

function Quest72124:OnSubFinish7212426(arg1)
    print("OnSubFinish7212426")
    self:DestroyQuestNpcActor(npcs.Npc3174Data.alias, 3)
end

function Quest72124:OnSubFailed7212426(arg1)
    print("OnSubFailed7212426")
end

function Quest72124:OnSubStart7212415(arg1)
    print("OnSubStart7212415")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3164Data.alias, 1, true)
    end)
end

function Quest72124:OnSubFinish7212415(arg1)
    print("OnSubFinish7212415")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest72124:OnSubFailed7212415(arg1)
    print("OnSubFailed7212415")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest72124:OnSubStart7212416(arg1)
    print("OnSubStart7212416")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc3174Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc3174Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    end)
end

function Quest72124:OnSubFinish7212416(arg1)
    print("OnSubFinish7212416")
end

function Quest72124:OnSubFailed7212416(arg1)
    print("OnSubFailed7212416")
end

function Quest72124:OnSubStart7212417(arg1)
    print("OnSubStart7212417")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc3174Data.alias):DoFreeStyle(1, true, nil, true, true, false)
end

function Quest72124:OnSubFinish7212417(arg1)
    print("OnSubFinish7212417")
end

function Quest72124:OnSubFailed7212417(arg1)
    print("OnSubFailed7212417")
end

function Quest72124:OnSubStart7212418(arg1)
    print("OnSubStart7212418")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc3174Data.alias):DoFreeStyle(1, true, nil, true, true, false)
end

function Quest72124:OnSubFinish7212418(arg1)
    print("OnSubFinish7212418")
end

function Quest72124:OnSubFailed7212418(arg1)
    print("OnSubFailed7212418")
end

function Quest72124:OnSubStart7212419(arg1)
    print("OnSubStart7212419")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc3174Data.alias):DoFreeStyle(1, true, nil, true, true, false)
end

function Quest72124:OnSubFinish7212419(arg1)
    print("OnSubFinish7212419")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
    self:ActionSafeCall(function(arg1)
        arg1:RequestInteraction(npcs.Npc3174Data.alias)
    end)
end

function Quest72124:OnSubFailed7212419(arg1)
    print("OnSubFailed7212419")
end

function Quest72124:OnSubStart7212420(arg1)
    print("OnSubStart7212420")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc3174Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc3174Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    end)
end

function Quest72124:OnSubFinish7212420(arg1)
    print("OnSubFinish7212420")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3174Data.alias)
end

function Quest72124:OnSubFailed7212420(arg1)
    print("OnSubFailed7212420")
end

function Quest72124:OnSubStart7212421(arg1)
    print("OnSubStart7212421")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
end

function Quest72124:OnSubFinish7212421(arg1)
    print("OnSubFinish7212421")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest72124:OnSubFailed7212421(arg1)
    print("OnSubFailed7212421")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest72124:OnSubStart7212422(arg1)
    print("OnSubStart7212422")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc3174Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc3174Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    end)
end

function Quest72124:OnSubFinish7212422(arg1)
    print("OnSubFinish7212422")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3174Data.alias)
end

function Quest72124:OnSubFailed7212422(arg1)
    print("OnSubFailed7212422")
end

function Quest72124:OnSubStart7212427(arg1)
    print("OnSubStart7212427")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
end

function Quest72124:OnSubFinish7212427(arg1)
    print("OnSubFinish7212427")
end

function Quest72124:OnSubFailed7212427(arg1)
    print("OnSubFailed7212427")
end

return Quest72124
