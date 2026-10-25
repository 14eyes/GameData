require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75148 = class("Quest75148", QuestActorProxy)
Quest75148.defaultAlias = "Quest75148"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75148:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75148:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7514809"] = self.OnSubStart7514809,
        ["7514801"] = self.OnSubStart7514801,
        ["7514805"] = self.OnSubStart7514805,
        ["7514806"] = self.OnSubStart7514806,
        ["7514802"] = self.OnSubStart7514802,
        ["7514808"] = self.OnSubStart7514808,
        ["7514804"] = self.OnSubStart7514804,
        ["7514807"] = self.OnSubStart7514807,
        ["7514803"] = self.OnSubStart7514803
    }
end

function Quest75148:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7514809"] = self.OnSubFinish7514809,
        ["7514801"] = self.OnSubFinish7514801,
        ["7514805"] = self.OnSubFinish7514805,
        ["7514806"] = self.OnSubFinish7514806,
        ["7514802"] = self.OnSubFinish7514802,
        ["7514808"] = self.OnSubFinish7514808,
        ["7514804"] = self.OnSubFinish7514804,
        ["7514807"] = self.OnSubFinish7514807,
        ["7514803"] = self.OnSubFinish7514803
    }
end

function Quest75148:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75148:Start()
    print("Start")
end

function Quest75148:OnDestroy()
    print("OnDestroy")
end

function Quest75148:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75148:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75148:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75148:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:ActionSafeCall(function(arg1)
            arg1:GetQuestNpcActor("Paimon"):DestroyWithDisappear(false)
        end)
    end
end

function Quest75148:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7514802rigger")
end

function Quest75148:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75148:CreateQuestNpcBesidePlayer(arg1, arg2, arg3, arg4)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = avatarForward.z / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    local v = -avatarForward.x / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    avatarPos.x = avatarPos.x + n * arg2
    avatarPos.z = avatarPos.z + v * arg2
    this:CreateQuestNpcByIdWithPos(arg3, arg1, arg4, avatarPos, avatarForward)
end

function Quest75148:OnSubStart7514809(arg1)
    print("OnSubStart7514809")
    actorUtils.FinishQuestID(false, 7514809)
end

function Quest75148:OnSubFinish7514809(arg1)
    print("OnSubFinish7514809")
end

function Quest75148:OnSubStart7514801(arg1)
    print("OnSubStart7514801")
end

function Quest75148:OnSubFinish7514801(arg1)
    print("OnSubFinish7514801")
end

function Quest75148:OnSubStart7514805(arg1)
    print("OnSubStart7514805")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7514801, function(arg1)
            actorUtils.FinishQuestID(false, 7514805)
        end, nil, nil, false)
    end)
end

function Quest75148:OnSubFinish7514805(arg1)
    print("OnSubFinish7514805")
end

function Quest75148:OnSubStart7514806(arg1)
    print("OnSubStart7514806")
    this:CreateQuestNpcBesidePlayer(1005, 0.5, 7514806, 0)
    this:RequestInteraction(npcs.Paimon.alias, "", true)
end

function Quest75148:OnSubFinish7514806(arg1)
    print("OnSubFinish7514806")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor("Paimon"):DestroyWithDisappear(false)
    end)

    this:SetNavigationByMainId(75148, true)
end

function Quest75148:OnSubStart7514802(arg1)
    print("OnSubStart7514802")
    actorMgr:CreateActorWithPos("Q7514802rigger", "Actor/Gadget/Q7514802rigger", 70900002, 0, points._Q7514802riggerPoint_.pos, points._Q7514802riggerPoint_.rot, true, false, 3)
end

function Quest75148:OnSubFinish7514802(arg1)
    print("OnSubFinish7514802")
end

function Quest75148:OnSubStart7514808(arg1)
    print("OnSubStart7514808")
    this:CreateQuestNpc(arg1, npcs.Npc21460.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21460.alias, "", true)
end

function Quest75148:OnSubFinish7514808(arg1)
    print("OnSubFinish7514808")
end

function Quest75148:OnSubStart7514804(arg1)
    print("OnSubStart7514804")
    this:PlayCutsceneIndex(7514802, function(arg1)
        actorUtils.FinishQuestID(false, 7514804)
    end, nil, nil, false)
end

function Quest75148:OnSubFinish7514804(arg1)
    print("OnSubFinish7514804")
end

function Quest75148:OnSubStart7514807(arg1)
    print("OnSubStart7514807")
    this:CreateQuestNpc(arg1, npcs.Npc21460.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21460.alias, "", true)
end

function Quest75148:OnSubFinish7514807(arg1)
    print("OnSubFinish7514807")
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
end

function Quest75148:OnSubStart7514803(arg1)
    print("OnSubStart7514803")
end

function Quest75148:OnSubFinish7514803(arg1)
    print("OnSubFinish7514803")
end

return Quest75148
