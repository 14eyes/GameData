require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72241 = class("Quest72241", QuestActorProxy)
Quest72241.defaultAlias = "Quest72241"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72241:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72241:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7224101"] = self.OnSubStart7224101,
        ["7224102"] = self.OnSubStart7224102,
        ["7224103"] = self.OnSubStart7224103,
        ["7224104"] = self.OnSubStart7224104,
        ["7224105"] = self.OnSubStart7224105,
        ["7224106"] = self.OnSubStart7224106,
        ["7224107"] = self.OnSubStart7224107,
        ["7224108"] = self.OnSubStart7224108,
        ["7224109"] = self.OnSubStart7224109,
        ["7224110"] = self.OnSubStart7224110,
        ["7224111"] = self.OnSubStart7224111,
        ["7224112"] = self.OnSubStart7224112,
        ["7224116"] = self.OnSubStart7224116,
        ["7224117"] = self.OnSubStart7224117,
        ["7224113"] = self.OnSubStart7224113,
        ["7224114"] = self.OnSubStart7224114,
        ["7224115"] = self.OnSubStart7224115
    }
end

function Quest72241:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7224101"] = self.OnSubFinish7224101,
        ["7224102"] = self.OnSubFinish7224102,
        ["7224103"] = self.OnSubFinish7224103,
        ["7224104"] = self.OnSubFinish7224104,
        ["7224105"] = self.OnSubFinish7224105,
        ["7224106"] = self.OnSubFinish7224106,
        ["7224107"] = self.OnSubFinish7224107,
        ["7224108"] = self.OnSubFinish7224108,
        ["7224109"] = self.OnSubFinish7224109,
        ["7224110"] = self.OnSubFinish7224110,
        ["7224111"] = self.OnSubFinish7224111,
        ["7224112"] = self.OnSubFinish7224112,
        ["7224116"] = self.OnSubFinish7224116,
        ["7224117"] = self.OnSubFinish7224117,
        ["7224113"] = self.OnSubFinish7224113,
        ["7224114"] = self.OnSubFinish7224114,
        ["7224115"] = self.OnSubFinish7224115
    }
end

function Quest72241:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72241:Start()
    print("Start")
end

function Quest72241:OnDestroy()
    print("OnDestroy")
end

function Quest72241:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72241:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72241:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72241:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72241:SummonPaimon(arg1)
    print("SummonPaimon")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, arg1, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest72241:VanishPaimon()
    print("VanishPaimon")
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    globalActor:EnablePlayerInput(true)
    questNpcActor:DestroyWithDisappear(false)
end

function Quest72241:OnSubStart7224101(arg1)
    print("OnSubStart7224101")
end

function Quest72241:OnSubFinish7224101(arg1)
    print("OnSubFinish7224101")
end

function Quest72241:OnSubStart7224102(arg1)
    print("OnSubStart7224102")
end

function Quest72241:OnSubFinish7224102(arg1)
    print("OnSubFinish7224102")
end

function Quest72241:OnSubStart7224103(arg1)
    print("OnSubStart7224103")
end

function Quest72241:OnSubFinish7224103(arg1)
    print("OnSubFinish7224103")
end

function Quest72241:OnSubStart7224104(arg1)
    print("OnSubStart7224104")
end

function Quest72241:OnSubFinish7224104(arg1)
    print("OnSubFinish7224104")
end

function Quest72241:OnSubStart7224105(arg1)
    print("OnSubStart7224105")
end

function Quest72241:OnSubFinish7224105(arg1)
    print("OnSubFinish7224105")
end

function Quest72241:OnSubStart7224106(arg1)
    print("OnSubStart7224106")
end

function Quest72241:OnSubFinish7224106(arg1)
    print("OnSubFinish7224106")
end

function Quest72241:OnSubStart7224107(arg1)
    print("OnSubStart7224107")
    self:NpcCreate(arg1, npcs.NPC20342Data.id, 1)
end

function Quest72241:OnSubFinish7224107(arg1)
    print("OnSubFinish7224107")
end

function Quest72241:OnSubStart7224108(arg1)
    print("OnSubStart7224108")
end

function Quest72241:OnSubFinish7224108(arg1)
    print("OnSubFinish7224108")
end

function Quest72241:OnSubStart7224109(arg1)
    print("OnSubStart7224109")
end

function Quest72241:OnSubFinish7224109(arg1)
    print("OnSubFinish7224109")
end

function Quest72241:OnSubStart7224110(arg1)
    print("OnSubStart7224110")
end

function Quest72241:OnSubFinish7224110(arg1)
    print("OnSubFinish7224110")
end

function Quest72241:OnSubStart7224111(arg1)
    print("OnSubStart7224111")
end

function Quest72241:OnSubFinish7224111(arg1)
    print("OnSubFinish7224111")
end

function Quest72241:OnSubStart7224112(arg1)
    print("OnSubStart7224112")
end

function Quest72241:OnSubFinish7224112(arg1)
    print("OnSubFinish7224112")
end

function Quest72241:OnSubStart7224116(arg1)
    print("OnSubStart7224116")
    self:PlayCutsceneIndex("7224101", nil, nil, nil, false)
    self:CallDelay(7, function(arg1)
        arg1:FinishQuestID(false, 7224116)
    end)
end

function Quest72241:OnSubFinish7224116(arg1)
    print("OnSubFinish7224116")
end

function Quest72241:OnSubStart7224117(arg1)
    print("OnSubStart7224117")
    self:EnablePlayerInput(false)
    self:SummonPaimon(7224117)
    self:EnablePlayerInput(true)
end

function Quest72241:OnSubFinish7224117(arg1)
    print("OnSubFinish7224117")
    self:VanishPaimon()
end

function Quest72241:OnSubStart7224113(arg1)
    print("OnSubStart7224113")
    self:NpcCreate(arg1, npcs.NPC20342Data.id, 1)
    actorMgr:CreateActorWithPos("Q7224113Trigger", "Actor/Gadget/Q7224113Trigger", 70900002, 0, {x = 269.6027, y = 540.5806, z = 215.6104}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72241:OnSubFinish7224113(arg1)
    print("OnSubFinish7224113")
end

function Quest72241:OnSubStart7224114(arg1)
    print("OnSubStart7224114")
end

function Quest72241:OnSubFinish7224114(arg1)
    print("OnSubFinish7224114")
    self:SafeDestroyQuestNpc(npcs.NPC20342Data.alias, 5)
end

function Quest72241:OnSubStart7224115(arg1)
    print("OnSubStart7224115")
end

function Quest72241:OnSubFinish7224115(arg1)
    print("OnSubFinish7224115")
end

return Quest72241
