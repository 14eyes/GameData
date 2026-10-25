require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71059 = class("Quest71059", QuestActorProxy)
Quest71059.defaultAlias = "Quest71059"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71059:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71059:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7105906"] = self.OnSubStart7105906,
        ["7105901"] = self.OnSubStart7105901,
        ["7105902"] = self.OnSubStart7105902,
        ["7105903"] = self.OnSubStart7105903,
        ["7105904"] = self.OnSubStart7105904,
        ["7105908"] = self.OnSubStart7105908,
        ["7105907"] = self.OnSubStart7105907,
        ["7105905"] = self.OnSubStart7105905,
        ["7105909"] = self.OnSubStart7105909
    }
end

function Quest71059:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7105906"] = self.OnSubFinish7105906,
        ["7105901"] = self.OnSubFinish7105901,
        ["7105902"] = self.OnSubFinish7105902,
        ["7105903"] = self.OnSubFinish7105903,
        ["7105904"] = self.OnSubFinish7105904,
        ["7105908"] = self.OnSubFinish7105908,
        ["7105907"] = self.OnSubFinish7105907,
        ["7105905"] = self.OnSubFinish7105905,
        ["7105909"] = self.OnSubFinish7105909
    }
end

function Quest71059:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71059:Start()
    print("Start")
end

function Quest71059:OnDestroy()
    print("OnDestroy")
end

function Quest71059:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71059:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71059:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71059:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest71059:OnSubStart7105906(arg1)
    print("OnSubStart7105906")
    self:CreateQuestNpc(arg1, npcs.Npc20535Data.id, 1)
end

function Quest71059:OnSubFinish7105906(arg1)
    print("OnSubFinish7105906")
end

function Quest71059:OnSubStart7105901(arg1)
    print("OnSubStart7105901")
    self:CreateQuestNpc(arg1, npcs.Npc20535Data.id, 1)
end

function Quest71059:OnSubFinish7105901(arg1)
    print("OnSubFinish7105901")
end

function Quest71059:OnSubStart7105902(arg1)
    print("OnSubStart7105902")
end

function Quest71059:OnSubFinish7105902(arg1)
    print("OnSubFinish7105902")
end

function Quest71059:OnSubStart7105903(arg1)
    print("OnSubStart7105903")
end

function Quest71059:OnSubFinish7105903(arg1)
    print("OnSubFinish7105903")
end

function Quest71059:OnSubStart7105904(arg1)
    print("OnSubStart7105904")
end

function Quest71059:OnSubFinish7105904(arg1)
    print("OnSubFinish7105904")
end

function Quest71059:OnSubStart7105908(arg1)
    print("OnSubStart7105908")
end

function Quest71059:OnSubFinish7105908(arg1)
    print("OnSubFinish7105908")
end

function Quest71059:OnSubStart7105907(arg1)
    print("OnSubStart7105907")
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
    self.CreateQuestNpcByIdWithPos(self, 7105907, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest71059:OnSubFinish7105907(arg1)
    print("OnSubFinish7105907")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest71059:OnSubStart7105905(arg1)
    print("OnSubStart7105905")
end

function Quest71059:OnSubFinish7105905(arg1)
    print("OnSubFinish7105905")
end

function Quest71059:OnSubStart7105909(arg1)
    print("OnSubStart7105909")
end

function Quest71059:OnSubFinish7105909(arg1)
    print("OnSubFinish7105909")
    self:ShowBlackScreen(0.2, 1, 0.5, function(arg1)
        arg1:NpcDestroy(npcs.Npc20535Data.alias, 6)
    end, nil, nil, "", false, true)
end

return Quest71059
