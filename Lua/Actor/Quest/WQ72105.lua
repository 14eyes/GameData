require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72105 = class("Quest72105", QuestActorProxy)
Quest72105.defaultAlias = "Quest72105"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72105:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72105:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7210501"] = self.OnSubStart7210501,
        ["7210502"] = self.OnSubStart7210502,
        ["7210503"] = self.OnSubStart7210503,
        ["7210508"] = self.OnSubStart7210508,
        ["7210504"] = self.OnSubStart7210504,
        ["7210505"] = self.OnSubStart7210505,
        ["7210506"] = self.OnSubStart7210506,
        ["7210509"] = self.OnSubStart7210509,
        ["7210510"] = self.OnSubStart7210510,
        ["7210511"] = self.OnSubStart7210511,
        ["7210507"] = self.OnSubStart7210507
    }
end

function Quest72105:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7210501"] = self.OnSubFinish7210501,
        ["7210502"] = self.OnSubFinish7210502,
        ["7210503"] = self.OnSubFinish7210503,
        ["7210508"] = self.OnSubFinish7210508,
        ["7210504"] = self.OnSubFinish7210504,
        ["7210505"] = self.OnSubFinish7210505,
        ["7210506"] = self.OnSubFinish7210506,
        ["7210509"] = self.OnSubFinish7210509,
        ["7210510"] = self.OnSubFinish7210510,
        ["7210511"] = self.OnSubFinish7210511,
        ["7210507"] = self.OnSubFinish7210507
    }
end

function Quest72105:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7210501"] = self.OnSubFailed7210501,
        ["7210502"] = self.OnSubFailed7210502,
        ["7210503"] = self.OnSubFailed7210503,
        ["7210508"] = self.OnSubFailed7210508,
        ["7210504"] = self.OnSubFailed7210504,
        ["7210505"] = self.OnSubFailed7210505,
        ["7210506"] = self.OnSubFailed7210506,
        ["7210509"] = self.OnSubFailed7210509,
        ["7210510"] = self.OnSubFailed7210510,
        ["7210511"] = self.OnSubFailed7210511,
        ["7210507"] = self.OnSubFailed7210507
    }
end

function Quest72105:Start()
    print("Start")
end

function Quest72105:OnDestroy()
    print("OnDestroy")
end

function Quest72105:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72105:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72105:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72105:questfinish7210509()
    print("questfinish7210509")
    self:FinishQuestID(false, 7210509)
end

function Quest72105:creatKazari()
    print("creatKazari")
    self:CreateQuestNpc(nil, npcs.Npc20221Data.id, 1)
end

function Quest72105:requestinteraction()
    print("requestinteraction")
    self:RequestInteraction(npcs.Npc20221Data.alias)
end

function Quest72105:Playcutscene1()
    print("Playcutscene1")
    self:PlayCutsceneIndex("7210508", self.requestinteraction, nil, nil, false)
end

function Quest72105:Playcutscene2()
    print("Playcutscene2")
    self:PlayCutsceneIndex("7210010", nil, nil, nil, false)
end

function Quest72105:Playcutscene3()
    print("Playcutscene3")
    self:PlayCutsceneIndex("7210011", self.safecall1, self.destroyWithDither, nil, false)
end

function Quest72105:safecall1()
    print("safecall1")
    self:ActionSafeCall(self.questfinish7210509)
end

function Quest72105:destroyWithDither()
    print("destroyWithDither")
    self:GetQuestNpcActor(npcs.Npc20221Data.alias):DestroyWithDither(false, 2)
end

function Quest72105:CallPaimon()
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
    self.CreateQuestNpcByIdWithPos(self, 7210501, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest72105:OnSubStart7210501(arg1)
    print("OnSubStart7210501")
    self:CallDelay(2, self.CallPaimon)
end

function Quest72105:OnSubFinish7210501(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72105:OnSubFailed7210501(arg1)
    print("OnSubFailed7210501")
end

function Quest72105:OnSubStart7210502(arg1)
    print("OnSubStart7210502")
    self:CreateQuestNpc(arg1, npcs.Npc20221Data.id, 1)
end

function Quest72105:OnSubFinish7210502(arg1)
    print("OnSubFinish7210502")
end

function Quest72105:OnSubFailed7210502(arg1)
    print("OnSubFailed7210502")
end

function Quest72105:OnSubStart7210503(arg1)
    print("OnSubStart7210503")
    self:CreateQuestNpc(arg1, npcs.Npc20221Data.id, 1)
end

function Quest72105:OnSubFinish7210503(arg1)
    print("OnSubFinish7210503")
end

function Quest72105:OnSubFailed7210503(arg1)
    print("OnSubFailed7210503")
end

function Quest72105:OnSubStart7210508(arg1)
    print("OnSubStart7210508")
    self:CreateQuestNpc(arg1, npcs.Npc20221Data.id, 1)
end

function Quest72105:OnSubFinish7210508(arg1)
    print("OnSubFinish7210508")
    self:ActionSafeCall(self.Playcutscene1)
end

function Quest72105:OnSubFailed7210508(arg1)
    print("OnSubFailed7210508")
end

function Quest72105:OnSubStart7210504(arg1)
    print("OnSubStart7210504")
end

function Quest72105:OnSubFinish7210504(arg1)
    print("OnSubFinish7210504")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72105:OnSubFailed7210504(arg1)
    print("OnSubFailed7210504")
end

function Quest72105:OnSubStart7210505(arg1)
    print("OnSubStart7210505")
end

function Quest72105:OnSubFinish7210505(arg1)
    print("OnSubFinish7210505")
    self:ActionSafeCall(self.Playcutscene2)
    self:TransmitPlayerById(arg1, 1)
end

function Quest72105:OnSubFailed7210505(arg1)
    print("OnSubFailed7210505")
end

function Quest72105:OnSubStart7210506(arg1)
    print("OnSubStart7210506")
    self:CreateQuestNpc(arg1, npcs.Npc20221Data.id, 1)
end

function Quest72105:OnSubFinish7210506(arg1)
    print("OnSubFinish7210506")
    self:SafeDestroyQuestNpc(npcs.Npc20221Data.alias, 3)
end

function Quest72105:OnSubFailed7210506(arg1)
    print("OnSubFailed7210506")
end

function Quest72105:OnSubStart7210509(arg1)
    print("OnSubStart7210509")
end

function Quest72105:OnSubFinish7210509(arg1)
    print("OnSubFinish7210509")
end

function Quest72105:OnSubFailed7210509(arg1)
    print("OnSubFailed7210509")
end

function Quest72105:OnSubStart7210510(arg1)
    print("OnSubStart7210510")
end

function Quest72105:OnSubFinish7210510(arg1)
    print("OnSubFinish7210510")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72105:OnSubFailed7210510(arg1)
    print("OnSubFailed7210510")
end

function Quest72105:OnSubStart7210511(arg1)
    print("OnSubStart7210511")
end

function Quest72105:OnSubFinish7210511(arg1)
    print("OnSubFinish7210511")
end

function Quest72105:OnSubFailed7210511(arg1)
    print("OnSubFailed7210511")
end

function Quest72105:OnSubStart7210507(arg1)
    print("OnSubStart7210507")
    self:GetQuestNpcActor(npcs.Npc20221Data.alias):DestroyWithDither(false, 3)
end

function Quest72105:OnSubFinish7210507(arg1)
    print("OnSubFinish7210507")
end

function Quest72105:OnSubFailed7210507(arg1)
    print("OnSubFailed7210507")
end

return Quest72105
