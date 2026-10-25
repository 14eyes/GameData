require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71055 = class("Quest71055", QuestActorProxy)
Quest71055.defaultAlias = "Quest71055"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71055:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71055:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7105521"] = self.OnSubStart7105521,
        ["7105501"] = self.OnSubStart7105501,
        ["7105502"] = self.OnSubStart7105502,
        ["7105503"] = self.OnSubStart7105503,
        ["7105504"] = self.OnSubStart7105504,
        ["7105518"] = self.OnSubStart7105518,
        ["7105505"] = self.OnSubStart7105505,
        ["7105506"] = self.OnSubStart7105506,
        ["7105507"] = self.OnSubStart7105507,
        ["7105508"] = self.OnSubStart7105508,
        ["7105509"] = self.OnSubStart7105509,
        ["7105511"] = self.OnSubStart7105511,
        ["7105510"] = self.OnSubStart7105510,
        ["7105516"] = self.OnSubStart7105516,
        ["7105517"] = self.OnSubStart7105517,
        ["7105512"] = self.OnSubStart7105512,
        ["7105520"] = self.OnSubStart7105520,
        ["7105513"] = self.OnSubStart7105513,
        ["7105519"] = self.OnSubStart7105519
    }
end

function Quest71055:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7105521"] = self.OnSubFinish7105521,
        ["7105501"] = self.OnSubFinish7105501,
        ["7105502"] = self.OnSubFinish7105502,
        ["7105503"] = self.OnSubFinish7105503,
        ["7105504"] = self.OnSubFinish7105504,
        ["7105518"] = self.OnSubFinish7105518,
        ["7105505"] = self.OnSubFinish7105505,
        ["7105506"] = self.OnSubFinish7105506,
        ["7105507"] = self.OnSubFinish7105507,
        ["7105508"] = self.OnSubFinish7105508,
        ["7105509"] = self.OnSubFinish7105509,
        ["7105511"] = self.OnSubFinish7105511,
        ["7105510"] = self.OnSubFinish7105510,
        ["7105516"] = self.OnSubFinish7105516,
        ["7105517"] = self.OnSubFinish7105517,
        ["7105512"] = self.OnSubFinish7105512,
        ["7105520"] = self.OnSubFinish7105520,
        ["7105513"] = self.OnSubFinish7105513,
        ["7105519"] = self.OnSubFinish7105519
    }
end

function Quest71055:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71055:Start()
    print("Start")
end

function Quest71055:OnDestroy()
    print("OnDestroy")
end

function Quest71055:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71055:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71055:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71055:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest71055:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest71055:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest71055:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71055:OnSubStart7105521(arg1)
    print("OnSubStart7105521")
    self:NpcCreate(arg1, npcs.Npc20537Data.id, 1)
end

function Quest71055:OnSubFinish7105521(arg1)
    print("OnSubFinish7105521")
    self:NpcDestroy(npcs.Npc20537Data.alias, 3)
end

function Quest71055:OnSubStart7105501(arg1)
    print("OnSubStart7105501")
end

function Quest71055:OnSubFinish7105501(arg1)
    print("OnSubFinish7105501")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2061Data.alias)
end

function Quest71055:OnSubStart7105502(arg1)
    print("OnSubStart7105502")
    self:NpcCreate(arg1, npcs.Npc20537Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20537Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest71055:OnSubFinish7105502(arg1)
    print("OnSubFinish7105502")
end

function Quest71055:OnSubStart7105503(arg1)
    print("OnSubStart7105503")
    self:CreateQuestNpc(arg1, npcs.Npc20537Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20537Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest71055:OnSubFinish7105503(arg1)
    print("OnSubFinish7105503")
    self:ShowBlackScreen(0.2, 2.8, 0, nil, nil, nil, datas.TextmapId.id1, false, true)
end

function Quest71055:OnSubStart7105504(arg1)
    print("OnSubStart7105504")
    self:CreateQuestNpc(arg1, npcs.Npc20537Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20537Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest71055:OnSubFinish7105504(arg1)
    print("OnSubFinish7105504")
    self:ShowBlackScreen(0.2, 2.8, 0, nil, nil, nil, datas.TextmapId.id1, false, true)
end

function Quest71055:OnSubStart7105518(arg1)
    print("OnSubStart7105518")
end

function Quest71055:OnSubFinish7105518(arg1)
    print("OnSubFinish7105518")
end

function Quest71055:OnSubStart7105505(arg1)
    print("OnSubStart7105505")
    self:CallDelay(3, function(arg1_2)
        arg1_2:NpcCreateWithActionSafeCall(arg1, npcs.Npc20537Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc20537Data.alias)
    end)
end

function Quest71055:OnSubFinish7105505(arg1)
    print("OnSubFinish7105505")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest71055:OnSubStart7105506(arg1)
    print("OnSubStart7105506")
end

function Quest71055:OnSubFinish7105506(arg1)
    print("OnSubFinish7105506")
end

function Quest71055:OnSubStart7105507(arg1)
    print("OnSubStart7105507")
end

function Quest71055:OnSubFinish7105507(arg1)
    print("OnSubFinish7105507")
    self:SafeDestroyQuestNpc(npcs.Npc20537Data.alias, 6)
end

function Quest71055:OnSubStart7105508(arg1)
    print("OnSubStart7105508")
    self:CreateQuestNpc(arg1, npcs.Npc20542Data.id, 1)
end

function Quest71055:OnSubFinish7105508(arg1)
    print("OnSubFinish7105508")
    self:SafeDestroyQuestNpc(npcs.Npc20542Data.alias, 6)
end

function Quest71055:OnSubStart7105509(arg1)
    print("OnSubStart7105509")
    self:CreateQuestNpc(arg1, npcs.Npc20538Data.id, 1)
end

function Quest71055:OnSubFinish7105509(arg1)
    print("OnSubFinish7105509")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20538Data.alias)
end

function Quest71055:OnSubStart7105511(arg1)
    print("OnSubStart7105511")
    self:CreateQuestNpc(arg1, npcs.Npc20538Data.id, 1)
    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20538Data.id, 1)
    end)
end

function Quest71055:OnSubFinish7105511(arg1)
    print("OnSubFinish7105511")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20538Data.alias)
end

function Quest71055:OnSubStart7105510(arg1)
    print("OnSubStart7105510")
end

function Quest71055:OnSubFinish7105510(arg1)
    print("OnSubFinish7105510")
end

function Quest71055:OnSubStart7105516(arg1)
    print("OnSubStart7105516")
    self:CreateQuestNpc(arg1, npcs.Npc20538Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20538Data.alias):DoFreeStyle(5010, true, nil, true, true, false)
end

function Quest71055:OnSubFinish7105516(arg1)
    print("OnSubFinish7105516")
end

function Quest71055:OnSubStart7105517(arg1)
    print("OnSubStart7105517")
    self:GetQuestNpcActor(npcs.Npc20538Data.alias):DoFreeStyle(1171, true, nil, true, true, false)
end

function Quest71055:OnSubFinish7105517(arg1)
    print("OnSubFinish7105517")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20538Data.alias)
end

function Quest71055:OnSubStart7105512(arg1)
    print("OnSubStart7105512")
    self:SafeDestroyQuestNpc(npcs.Npc20537Data.alias, 3)
end

function Quest71055:OnSubFinish7105512(arg1)
    print("OnSubFinish7105512")
end

function Quest71055:OnSubStart7105520(arg1)
    print("OnSubStart7105520")
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
    self.CreateQuestNpcByIdWithPos(self, 7105520, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest71055:OnSubFinish7105520(arg1)
    print("OnSubFinish7105520")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest71055:OnSubStart7105513(arg1)
    print("OnSubStart7105513")
    self:CreateQuestNpc(arg1, npcs.Npc20537Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20538Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20538Data.alias):DoFreeStyle(1050, true, nil, true, true, false)
end

function Quest71055:OnSubFinish7105513(arg1)
    print("OnSubFinish7105513")
    self:NpcDestroy(npcs.Npc20538Data.alias, 3)
end

function Quest71055:OnSubStart7105519(arg1)
    print("OnSubStart7105519")
end

function Quest71055:OnSubFinish7105519(arg1)
    print("OnSubFinish7105519")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2061Data.alias)
end

return Quest71055
