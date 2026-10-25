require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73500 = class("Quest73500", QuestActorProxy)
Quest73500.defaultAlias = "Quest73500"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest73500:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest73500:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7350001"] = self.OnSubStart7350001,
        ["7350002"] = self.OnSubStart7350002,
        ["7350003"] = self.OnSubStart7350003,
        ["7350004"] = self.OnSubStart7350004,
        ["7350005"] = self.OnSubStart7350005,
        ["7350006"] = self.OnSubStart7350006,
        ["7350007"] = self.OnSubStart7350007,
        ["7350009"] = self.OnSubStart7350009,
        ["7350015"] = self.OnSubStart7350015,
        ["7350016"] = self.OnSubStart7350016,
        ["7350017"] = self.OnSubStart7350017,
        ["7350018"] = self.OnSubStart7350018,
        ["7350019"] = self.OnSubStart7350019,
        ["7350008"] = self.OnSubStart7350008,
        ["7350010"] = self.OnSubStart7350010,
        ["7350011"] = self.OnSubStart7350011,
        ["7350012"] = self.OnSubStart7350012,
        ["7350013"] = self.OnSubStart7350013,
        ["7350014"] = self.OnSubStart7350014
    }
end

function Quest73500:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7350001"] = self.OnSubFinish7350001,
        ["7350002"] = self.OnSubFinish7350002,
        ["7350003"] = self.OnSubFinish7350003,
        ["7350004"] = self.OnSubFinish7350004,
        ["7350005"] = self.OnSubFinish7350005,
        ["7350006"] = self.OnSubFinish7350006,
        ["7350007"] = self.OnSubFinish7350007,
        ["7350009"] = self.OnSubFinish7350009,
        ["7350015"] = self.OnSubFinish7350015,
        ["7350016"] = self.OnSubFinish7350016,
        ["7350017"] = self.OnSubFinish7350017,
        ["7350018"] = self.OnSubFinish7350018,
        ["7350019"] = self.OnSubFinish7350019,
        ["7350008"] = self.OnSubFinish7350008,
        ["7350010"] = self.OnSubFinish7350010,
        ["7350011"] = self.OnSubFinish7350011,
        ["7350012"] = self.OnSubFinish7350012,
        ["7350013"] = self.OnSubFinish7350013,
        ["7350014"] = self.OnSubFinish7350014
    }
end

function Quest73500:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73500:Start()
    print("Start")
end

function Quest73500:OnDestroy()
    print("OnDestroy")
end

function Quest73500:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73500:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73500:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30214Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30215Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30216Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4216Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4217Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20746Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20747Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20748Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30213Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30212Data.alias, 3)
    actorMgr:GetActor("73500"):UnSpawn(gadgets.Gadget70710824Data.alias)
    actorMgr:DestroyEntityActor("Q7350001Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7350002Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7350003Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7350004Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7350005Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7350006Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7350007Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7350008Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7350010Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7350011Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7350012Trigger", 3, false)
end

function Quest73500:CreateQuestNpcBesidePlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = avatarForward.z / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    local v = -avatarForward.x / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    avatarPos.x = avatarPos.x + n * arg3
    avatarPos.z = avatarPos.z + v * arg3
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest73500:Createpaimon10()
    print("Createpaimon10")
    if actorUtils.IsInMainPage() == true then
        self:CallDelay(1, function(arg1)
            arg1:CreateQuestNpcBesidePlayer(7350010, npcs.PaimonData.id, 0.5)
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    else
        self:CallDelay(2, function(arg1)
            arg1:Createpaimon10()
        end)
    end
end

function Quest73500:PaimonDestroy()
    print("PaimonDestroy")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest73500:OnSubStart7350001(arg1)
    print("OnSubStart7350001")
    self:CreateQuestNpc(arg1, npcs.Npc30214Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc30215Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc30216Data.id, 3)
    self:UnSpawn(gadgets.Gadget70710824Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710824Data.id, 1, 0)
    actorMgr:CreateActorWithPos("Q7350001Trigger", "Actor/Gadget/Q7350001Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7350001_N30212_330400113").pos, sceneData:GetDummyPoint(3, "Q7350001_N30212_330400113").rot, true, false, 3)
end

function Quest73500:OnSubFinish7350001(arg1)
    print("OnSubFinish7350001")
    self:PaimonDestroy()
    self:SafeDestroyQuestNpc(npcs.Npc30214Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30215Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30216Data.alias, 3)
end

function Quest73500:OnSubStart7350002(arg1)
    print("OnSubStart7350002")
    self:CreateQuestNpc(arg1, npcs.Npc4217Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 2)
    actorMgr:CreateActorWithPos("Q7350002Trigger", "Actor/Gadget/Q7350002Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7350002").pos, sceneData:GetDummyPoint(3, "guide_Q7350002").rot, true, false, 3)
end

function Quest73500:OnSubFinish7350002(arg1)
    print("OnSubFinish7350002")
end

function Quest73500:OnSubStart7350003(arg1)
    print("OnSubStart7350003")
    actorMgr:CreateActorWithPos("Q7350003Trigger", "Actor/Gadget/Q7350003Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7350002").pos, sceneData:GetDummyPoint(3, "guide_Q7350002").rot, true, false, 3)
end

function Quest73500:OnSubFinish7350003(arg1)
    print("OnSubFinish7350003")
    self:PaimonDestroy()
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId01)
    end)

    self:SafeDestroyQuestNpc(npcs.Npc4217Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
end

function Quest73500:OnSubStart7350004(arg1)
    print("OnSubStart7350004")
    self:CreateQuestNpc(arg1, npcs.Npc4216Data.id, 1)
    actorMgr:CreateActorWithPos("Q7350004Trigger", "Actor/Gadget/Q7350004Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7350004").pos, sceneData:GetDummyPoint(3, "guide_Q7350004").rot, true, false, 3)
end

function Quest73500:OnSubFinish7350004(arg1)
    print("OnSubFinish7350004")
end

function Quest73500:OnSubStart7350005(arg1)
    print("OnSubStart7350005")
    actorMgr:CreateActorWithPos("Q7350005Trigger", "Actor/Gadget/Q7350005Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7350004_N4216").pos, sceneData:GetDummyPoint(3, "Q7350004_N4216").rot, true, false, 3)
end

function Quest73500:OnSubFinish7350005(arg1)
    print("OnSubFinish7350005")
    self:PaimonDestroy()
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc4216Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4217Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
end

function Quest73500:OnSubStart7350006(arg1)
    print("OnSubStart7350006")
    actorMgr:CreateActorWithPos("Q7350006Trigger", "Actor/Gadget/Q7350006Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7350006").pos, sceneData:GetDummyPoint(3, "guide_Q7350006").rot, true, false, 3)
end

function Quest73500:OnSubFinish7350006(arg1)
    print("OnSubFinish7350006")
end

function Quest73500:OnSubStart7350007(arg1)
    print("OnSubStart7350007")
    actorMgr:CreateActorWithPos("Q7350007Trigger", "Actor/Gadget/Q7350007Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7350007_N1005").pos, sceneData:GetDummyPoint(3, "Q7350007_N1005").rot, true, false, 3)
end

function Quest73500:OnSubFinish7350007(arg1)
    print("OnSubFinish7350007")
    self:PaimonDestroy()
end

function Quest73500:OnSubStart7350009(arg1)
    print("OnSubStart7350009")
    self:CreateQuestNpc(arg1, npcs.Npc20746Data.id, 4)
end

function Quest73500:OnSubFinish7350009(arg1)
    print("OnSubFinish7350009")
    self:PaimonDestroy()
    self:SafeDestroyQuestNpc(npcs.Npc20746Data.alias, 3)
end

function Quest73500:OnSubStart7350015(arg1)
    print("OnSubStart7350015")
    self:CreateQuestNpc(arg1, npcs.Npc20747Data.id, 4)
end

function Quest73500:OnSubFinish7350015(arg1)
    print("OnSubFinish7350015")
    self:PaimonDestroy()
    self:SafeDestroyQuestNpc(npcs.Npc20747Data.alias, 3)
end

function Quest73500:OnSubStart7350016(arg1)
    print("OnSubStart7350016")
    self:CreateQuestNpc(arg1, npcs.Npc20748Data.id, 4)
end

function Quest73500:OnSubFinish7350016(arg1)
    print("OnSubFinish7350016")
    self:PaimonDestroy()
    self:SafeDestroyQuestNpc(npcs.Npc20748Data.alias, 3)
end

function Quest73500:OnSubStart7350017(arg1)
    print("OnSubStart7350017")
end

function Quest73500:OnSubFinish7350017(arg1)
    print("OnSubFinish7350017")
end

function Quest73500:OnSubStart7350018(arg1)
    print("OnSubStart7350018")
end

function Quest73500:OnSubFinish7350018(arg1)
    print("OnSubFinish7350018")
end

function Quest73500:OnSubStart7350019(arg1)
    print("OnSubStart7350019")
end

function Quest73500:OnSubFinish7350019(arg1)
    print("OnSubFinish7350019")
    self:PaimonDestroy()
    self:SafeDestroyQuestNpc(npcs.Npc4216Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4217Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
end

function Quest73500:OnSubStart7350008(arg1)
    print("OnSubStart7350008")
    actorMgr:CreateActorWithPos("Q7350008Trigger", "Actor/Gadget/Q7350008Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7350008").pos, sceneData:GetDummyPoint(3, "guide_Q7350008").rot, true, false, 3)
end

function Quest73500:OnSubFinish7350008(arg1)
    print("OnSubFinish7350008")
end

function Quest73500:OnSubStart7350010(arg1)
    print("OnSubStart7350010")
    actorMgr:CreateActorWithPos("Q7350010Trigger", "Actor/Gadget/Q7350010Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7350008").pos, sceneData:GetDummyPoint(3, "guide_Q7350008").rot, true, false, 3)
end

function Quest73500:OnSubFinish7350010(arg1)
    print("OnSubFinish7350010")
    self:PaimonDestroy()
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId03)
    end)
end

function Quest73500:OnSubStart7350011(arg1)
    print("OnSubStart7350011")
    self:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 1)
    actorMgr:CreateActorWithPos("Q7350011Trigger", "Actor/Gadget/Q7350011Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7350011").pos, sceneData:GetDummyPoint(3, "guide_Q7350011").rot, true, false, 3)
end

function Quest73500:OnSubFinish7350011(arg1)
    print("OnSubFinish7350011")
end

function Quest73500:OnSubStart7350012(arg1)
    print("OnSubStart7350012")
    actorMgr:CreateActorWithPos("Q7350012Trigger", "Actor/Gadget/Q7350012Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7350011_N1051").pos, sceneData:GetDummyPoint(3, "Q7350011_N1051").rot, true, false, 3)
end

function Quest73500:OnSubFinish7350012(arg1)
    print("OnSubFinish7350012")
    self:PaimonDestroy()
    self:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
end

function Quest73500:OnSubStart7350013(arg1)
    print("OnSubStart7350013")
end

function Quest73500:OnSubFinish7350013(arg1)
    print("OnSubFinish7350013")
end

function Quest73500:OnSubStart7350014(arg1)
    print("OnSubStart7350014")
    self:CreateQuestNpc(arg1, npcs.Npc4216Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4216Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc4217Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 3)
end

function Quest73500:OnSubFinish7350014(arg1)
    print("OnSubFinish7350014")
    self:PaimonDestroy()
    self:SafeDestroyQuestNpc(npcs.Npc4216Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4217Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710824Data.alias)
end

return Quest73500
