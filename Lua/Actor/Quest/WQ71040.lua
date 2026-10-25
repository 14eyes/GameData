require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71040 = class("Quest71040", QuestActorProxy)
Quest71040.defaultAlias = "Quest71040"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71040:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71040:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7104010"] = self.OnSubStart7104010,
        ["7104001"] = self.OnSubStart7104001,
        ["7104009"] = self.OnSubStart7104009,
        ["7104002"] = self.OnSubStart7104002,
        ["7104003"] = self.OnSubStart7104003,
        ["7104005"] = self.OnSubStart7104005,
        ["7104008"] = self.OnSubStart7104008
    }
end

function Quest71040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7104010"] = self.OnSubFinish7104010,
        ["7104001"] = self.OnSubFinish7104001,
        ["7104009"] = self.OnSubFinish7104009,
        ["7104002"] = self.OnSubFinish7104002,
        ["7104003"] = self.OnSubFinish7104003,
        ["7104005"] = self.OnSubFinish7104005,
        ["7104008"] = self.OnSubFinish7104008
    }
end

function Quest71040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71040:Start()
    print("Start")
end

function Quest71040:OnDestroy()
    print("OnDestroy")
end

function Quest71040:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71040:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71040:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71040:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest71040:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71040:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest71040:OnSubStart7104010(arg1)
    print("OnSubStart7104010")
end

function Quest71040:OnSubFinish7104010(arg1)
    print("OnSubFinish7104010")
end

function Quest71040:OnSubStart7104001(arg1)
    print("OnSubStart7104001")
    self:NpcCreate(arg1, npcs.Npc20524Data.id, 1)
end

function Quest71040:OnSubFinish7104001(arg1)
    print("OnSubFinish7104001")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20524Data.alias)
end

function Quest71040:OnSubStart7104009(arg1)
    print("OnSubStart7104009")
    self.NpcCreateWithBlackscreen(self, arg1, npcs.Npc20523Data.id, 2)
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
    self.CreateQuestNpcByIdWithPos(self, 7104009, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest71040:OnSubFinish7104009(arg1)
    print("OnSubFinish7104009")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20523Data.alias)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest71040:OnSubStart7104002(arg1)
    print("OnSubStart7104002")
end

function Quest71040:OnSubFinish7104002(arg1)
    print("OnSubFinish7104002")
end

function Quest71040:OnSubStart7104003(arg1)
    print("OnSubStart7104003")
end

function Quest71040:OnSubFinish7104003(arg1)
    print("OnSubFinish7104003")
end

function Quest71040:OnSubStart7104005(arg1)
    print("OnSubStart7104005")
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
    self.CreateQuestNpcByIdWithPos(self, 7104005, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest71040:OnSubFinish7104005(arg1)
    print("OnSubFinish7104005")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest71040:OnSubStart7104008(arg1)
    print("OnSubStart7104008")
    self:PlayCutsceneIndex("7104001", function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1, function(arg1)
            actorUtils.FinishQuestID(false, 7104008)
        end)
    end, nil, nil, true)
end

function Quest71040:OnSubFinish7104008(arg1)
    print("OnSubFinish7104008")
end

return Quest71040
