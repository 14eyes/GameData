require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72245 = class("Quest72245", QuestActorProxy)
Quest72245.defaultAlias = "Quest72245"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72245:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72245:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7224501"] = self.OnSubStart7224501,
        ["7224502"] = self.OnSubStart7224502,
        ["7224503"] = self.OnSubStart7224503,
        ["7224504"] = self.OnSubStart7224504,
        ["7224505"] = self.OnSubStart7224505,
        ["7224506"] = self.OnSubStart7224506,
        ["7224507"] = self.OnSubStart7224507,
        ["7224508"] = self.OnSubStart7224508,
        ["7224509"] = self.OnSubStart7224509
    }
end

function Quest72245:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7224501"] = self.OnSubFinish7224501,
        ["7224502"] = self.OnSubFinish7224502,
        ["7224503"] = self.OnSubFinish7224503,
        ["7224504"] = self.OnSubFinish7224504,
        ["7224505"] = self.OnSubFinish7224505,
        ["7224506"] = self.OnSubFinish7224506,
        ["7224507"] = self.OnSubFinish7224507,
        ["7224508"] = self.OnSubFinish7224508,
        ["7224509"] = self.OnSubFinish7224509
    }
end

function Quest72245:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72245:Start()
    print("Start")
end

function Quest72245:OnDestroy()
    print("OnDestroy")
end

function Quest72245:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72245:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72245:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72245:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72245:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest72245:SummonPaimon(arg1)
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

function Quest72245:VanishPaimon()
    print("VanishPaimon")
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    globalActor:EnablePlayerInput(true)
    questNpcActor:DestroyWithDisappear(false)
end

function Quest72245:OnSubStart7224501(arg1)
    print("OnSubStart7224501")
    self:NpcCreate(arg1, npcs.NPC20359Data.id, 1)
end

function Quest72245:OnSubFinish7224501(arg1)
    print("OnSubFinish7224501")
    self:NpcDestroyWithDither(npcs.NPC20359Data.alias, 5)
end

function Quest72245:OnSubStart7224502(arg1)
    print("OnSubStart7224502")
    self:NpcCreate(arg1, npcs.NPC20360Data.id, 1)
end

function Quest72245:OnSubFinish7224502(arg1)
    print("OnSubFinish7224502")
    self:NpcDestroyWithDither(npcs.NPC20360Data.alias, 5)
end

function Quest72245:OnSubStart7224503(arg1)
    print("OnSubStart7224503")
    self:NpcCreate(arg1, npcs.NPC20361Data.id, 1)
end

function Quest72245:OnSubFinish7224503(arg1)
    print("OnSubFinish7224503")
    self:NpcDestroyWithDither(npcs.NPC20361Data.alias, 5)
end

function Quest72245:OnSubStart7224504(arg1)
    print("OnSubStart7224504")
    self:NpcCreate(arg1, npcs.NPC20362Data.id, 1)
end

function Quest72245:OnSubFinish7224504(arg1)
    print("OnSubFinish7224504")
    self:NpcDestroyWithDither(npcs.NPC20362Data.alias, 5)
end

function Quest72245:OnSubStart7224505(arg1)
    print("OnSubStart7224505")
    self:NpcCreate(arg1, npcs.NPC20363Data.id, 1)
end

function Quest72245:OnSubFinish7224505(arg1)
    print("OnSubFinish7224505")
    self:NpcDestroyWithDither(npcs.NPC20363Data.alias, 5)
end

function Quest72245:OnSubStart7224506(arg1)
    print("OnSubStart7224506")
    self:NpcCreate(arg1, npcs.NPC20417Data.id, 1)
end

function Quest72245:OnSubFinish7224506(arg1)
    print("OnSubFinish7224506")
    self:NpcDestroyWithDither(npcs.NPC20417Data.alias, 5)
end

function Quest72245:OnSubStart7224507(arg1)
    print("OnSubStart7224507")
    self:NpcCreate(arg1, npcs.NPC20418Data.id, 1)
end

function Quest72245:OnSubFinish7224507(arg1)
    print("OnSubFinish7224507")
    self:NpcDestroyWithDither(npcs.NPC20418Data.alias, 5)
end

function Quest72245:OnSubStart7224508(arg1)
    print("OnSubStart7224508")
end

function Quest72245:OnSubFinish7224508(arg1)
    print("OnSubFinish7224508")
    self:CallDelay(3, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable, nil, "")
    end)
end

function Quest72245:OnSubStart7224509(arg1)
    print("OnSubStart7224509")
end

function Quest72245:OnSubFinish7224509(arg1)
    print("OnSubFinish7224509")
end

return Quest72245
