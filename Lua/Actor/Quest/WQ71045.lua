require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71045 = class("Quest71045", QuestActorProxy)
Quest71045.defaultAlias = "Quest71045"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71045:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71045:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7104501"] = self.OnSubStart7104501,
        ["7104502"] = self.OnSubStart7104502,
        ["7104503"] = self.OnSubStart7104503,
        ["7104504"] = self.OnSubStart7104504,
        ["7104521"] = self.OnSubStart7104521,
        ["7104522"] = self.OnSubStart7104522,
        ["7104528"] = self.OnSubStart7104528,
        ["7104505"] = self.OnSubStart7104505,
        ["7104507"] = self.OnSubStart7104507,
        ["7104519"] = self.OnSubStart7104519,
        ["7104509"] = self.OnSubStart7104509,
        ["7104510"] = self.OnSubStart7104510,
        ["7104511"] = self.OnSubStart7104511,
        ["7104512"] = self.OnSubStart7104512,
        ["7104513"] = self.OnSubStart7104513,
        ["7104514"] = self.OnSubStart7104514,
        ["7104526"] = self.OnSubStart7104526,
        ["7104527"] = self.OnSubStart7104527,
        ["7104525"] = self.OnSubStart7104525,
        ["7104515"] = self.OnSubStart7104515,
        ["7104516"] = self.OnSubStart7104516,
        ["7104517"] = self.OnSubStart7104517,
        ["7104523"] = self.OnSubStart7104523,
        ["7104518"] = self.OnSubStart7104518,
        ["7104520"] = self.OnSubStart7104520,
        ["7104524"] = self.OnSubStart7104524,
        ["7104529"] = self.OnSubStart7104529
    }
end

function Quest71045:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7104501"] = self.OnSubFinish7104501,
        ["7104502"] = self.OnSubFinish7104502,
        ["7104503"] = self.OnSubFinish7104503,
        ["7104504"] = self.OnSubFinish7104504,
        ["7104521"] = self.OnSubFinish7104521,
        ["7104522"] = self.OnSubFinish7104522,
        ["7104528"] = self.OnSubFinish7104528,
        ["7104505"] = self.OnSubFinish7104505,
        ["7104507"] = self.OnSubFinish7104507,
        ["7104519"] = self.OnSubFinish7104519,
        ["7104509"] = self.OnSubFinish7104509,
        ["7104510"] = self.OnSubFinish7104510,
        ["7104511"] = self.OnSubFinish7104511,
        ["7104512"] = self.OnSubFinish7104512,
        ["7104513"] = self.OnSubFinish7104513,
        ["7104514"] = self.OnSubFinish7104514,
        ["7104526"] = self.OnSubFinish7104526,
        ["7104527"] = self.OnSubFinish7104527,
        ["7104525"] = self.OnSubFinish7104525,
        ["7104515"] = self.OnSubFinish7104515,
        ["7104516"] = self.OnSubFinish7104516,
        ["7104517"] = self.OnSubFinish7104517,
        ["7104523"] = self.OnSubFinish7104523,
        ["7104518"] = self.OnSubFinish7104518,
        ["7104520"] = self.OnSubFinish7104520,
        ["7104524"] = self.OnSubFinish7104524,
        ["7104529"] = self.OnSubFinish7104529
    }
end

function Quest71045:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71045:Start()
    print("Start")
end

function Quest71045:OnDestroy()
    print("OnDestroy")
end

function Quest71045:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71045:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71045:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71045:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71045:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest71045:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest71045:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest71045:OnMovePause()
    print("OnMovePause")
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    local actor = actorMgr:GetActor("71045")
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest71045:OnMoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest71045:OnSubStart7104501(arg1)
    print("OnSubStart7104501")
    self:CreateQuestNpc(arg1, npcs.Npc20523Data.id, 1)
end

function Quest71045:OnSubFinish7104501(arg1)
    print("OnSubFinish7104501")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20523Data.alias)
end

function Quest71045:OnSubStart7104502(arg1)
    print("OnSubStart7104502")
end

function Quest71045:OnSubFinish7104502(arg1)
    print("OnSubFinish7104502")
end

function Quest71045:OnSubStart7104503(arg1)
    print("OnSubStart7104503")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20523Data.id, 1)
end

function Quest71045:OnSubFinish7104503(arg1)
    print("OnSubFinish7104503")
end

function Quest71045:OnSubStart7104504(arg1)
    print("OnSubStart7104504")
    self:CreateQuestNpc(arg1, npcs.Npc20523Data.id, 1)
end

function Quest71045:OnSubFinish7104504(arg1)
    print("OnSubFinish7104504")
end

function Quest71045:OnSubStart7104521(arg1)
    print("OnSubStart7104521")
    self:TransmitPlayerById(arg1, 2)
end

function Quest71045:OnSubFinish7104521(arg1)
    print("OnSubFinish7104521")
    self:NpcDestroy(npcs.Npc20523Data.alias, 6)
end

function Quest71045:OnSubStart7104522(arg1)
    print("OnSubStart7104522")
end

function Quest71045:OnSubFinish7104522(arg1)
    print("OnSubFinish7104522")
end

function Quest71045:OnSubStart7104528(arg1)
    print("OnSubStart7104528")
end

function Quest71045:OnSubFinish7104528(arg1)
    print("OnSubFinish7104528")
end

function Quest71045:OnSubStart7104505(arg1)
    print("OnSubStart7104505")
end

function Quest71045:OnSubFinish7104505(arg1)
    print("OnSubFinish7104505")
end

function Quest71045:OnSubStart7104507(arg1)
    print("OnSubStart7104507")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.PaimonData.id, 1, npcs.PaimonData.alias)
    self:TransmitPlayerById(arg1, 1)
end

function Quest71045:OnSubFinish7104507(arg1)
    print("OnSubFinish7104507")
    self:NpcDestroyWithBlackscreen(6, npcs.PaimonData.alias)
end

function Quest71045:OnSubStart7104519(arg1)
    print("OnSubStart7104519")
end

function Quest71045:OnSubFinish7104519(arg1)
    print("OnSubFinish7104519")
end

function Quest71045:OnSubStart7104509(arg1)
    print("OnSubStart7104509")
end

function Quest71045:OnSubFinish7104509(arg1)
    print("OnSubFinish7104509")
end

function Quest71045:OnSubStart7104510(arg1)
    print("OnSubStart7104510")
end

function Quest71045:OnSubFinish7104510(arg1)
    print("OnSubFinish7104510")
end

function Quest71045:OnSubStart7104511(arg1)
    print("OnSubStart7104511")
end

function Quest71045:OnSubFinish7104511(arg1)
    print("OnSubFinish7104511")
end

function Quest71045:OnSubStart7104512(arg1)
    print("OnSubStart7104512")
end

function Quest71045:OnSubFinish7104512(arg1)
    print("OnSubFinish7104512")
end

function Quest71045:OnSubStart7104513(arg1)
    print("OnSubStart7104513")
end

function Quest71045:OnSubFinish7104513(arg1)
    print("OnSubFinish7104513")
end

function Quest71045:OnSubStart7104514(arg1)
    print("OnSubStart7104514")
end

function Quest71045:OnSubFinish7104514(arg1)
    print("OnSubFinish7104514")
end

function Quest71045:OnSubStart7104526(arg1)
    print("OnSubStart7104526")
end

function Quest71045:OnSubFinish7104526(arg1)
    print("OnSubFinish7104526")
end

function Quest71045:OnSubStart7104527(arg1)
    print("OnSubStart7104527")
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
    self.CreateQuestNpcByIdWithPos(self, 7104527, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest71045:OnSubFinish7104527(arg1)
    print("OnSubFinish7104527")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest71045:OnSubStart7104525(arg1)
    print("OnSubStart7104525")
end

function Quest71045:OnSubFinish7104525(arg1)
    print("OnSubFinish7104525")
end

function Quest71045:OnSubStart7104515(arg1)
    print("OnSubStart7104515")
    self:PlayCutsceneIndex("7104501", function(arg1)
        actorUtils.FinishQuestID(false, 7104515)
    end, nil, nil, true)
end

function Quest71045:OnSubFinish7104515(arg1)
    print("OnSubFinish7104515")
    self:TransmitPlayerById(arg1, 2)
end

function Quest71045:OnSubStart7104516(arg1)
    print("OnSubStart7104516")
end

function Quest71045:OnSubFinish7104516(arg1)
    print("OnSubFinish7104516")
end

function Quest71045:OnSubStart7104517(arg1)
    print("OnSubStart7104517")
    self:PlayCutsceneIndex("7104502", function(arg1_2)
        arg1_2:TransmitPlayerWithTextById(arg1, 3, datas.TextmapId, 2, function(arg1)
            arg1:ShowBlackScreen(0, 3, 1, function(arg1)
                actorUtils.FinishQuestID(false, 7104517)
            end, nil, nil, "", false, true)
        end)
    end, function(arg1)
        arg1:CallDelay(1, function(arg1)
            actorUtils.FinishQuestID(false, 7104529)
        end)
    end, nil, true)
end

function Quest71045:OnSubFinish7104517(arg1)
    print("OnSubFinish7104517")
end

function Quest71045:OnSubStart7104523(arg1)
    print("OnSubStart7104523")
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
    self.CreateQuestNpcByIdWithPos(self, 7104523, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest71045:OnSubFinish7104523(arg1)
    print("OnSubFinish7104523")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest71045:OnSubStart7104518(arg1)
    print("OnSubStart7104518")
    self:CreateQuestNpc(arg1, npcs.Npc20523Data.id, 1)
end

function Quest71045:OnSubFinish7104518(arg1)
    print("OnSubFinish7104518")
end

function Quest71045:OnSubStart7104520(arg1)
    print("OnSubStart7104520")
end

function Quest71045:OnSubFinish7104520(arg1)
    print("OnSubFinish7104520")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2061Data.alias)
end

function Quest71045:OnSubStart7104524(arg1)
    print("OnSubStart7104524")
end

function Quest71045:OnSubFinish7104524(arg1)
    print("OnSubFinish7104524")
end

function Quest71045:OnSubStart7104529(arg1)
    print("OnSubStart7104529")
end

function Quest71045:OnSubFinish7104529(arg1)
    print("OnSubFinish7104529")
end

return Quest71045
