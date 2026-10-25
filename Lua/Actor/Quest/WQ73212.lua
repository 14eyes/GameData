require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73212 = class("Quest73212", QuestActorProxy)
Quest73212.defaultAlias = "Quest73212"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73212:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73212:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7321201"] = self.OnSubStart7321201,
        ["7321202"] = self.OnSubStart7321202,
        ["7321203"] = self.OnSubStart7321203,
        ["7321204"] = self.OnSubStart7321204,
        ["7321214"] = self.OnSubStart7321214,
        ["7321215"] = self.OnSubStart7321215,
        ["7321213"] = self.OnSubStart7321213,
        ["7321205"] = self.OnSubStart7321205,
        ["7321212"] = self.OnSubStart7321212,
        ["7321206"] = self.OnSubStart7321206,
        ["7321207"] = self.OnSubStart7321207,
        ["7321208"] = self.OnSubStart7321208,
        ["7321216"] = self.OnSubStart7321216,
        ["7321209"] = self.OnSubStart7321209,
        ["7321210"] = self.OnSubStart7321210,
        ["7321211"] = self.OnSubStart7321211
    }
end

function Quest73212:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7321201"] = self.OnSubFinish7321201,
        ["7321202"] = self.OnSubFinish7321202,
        ["7321203"] = self.OnSubFinish7321203,
        ["7321204"] = self.OnSubFinish7321204,
        ["7321214"] = self.OnSubFinish7321214,
        ["7321215"] = self.OnSubFinish7321215,
        ["7321213"] = self.OnSubFinish7321213,
        ["7321205"] = self.OnSubFinish7321205,
        ["7321212"] = self.OnSubFinish7321212,
        ["7321206"] = self.OnSubFinish7321206,
        ["7321207"] = self.OnSubFinish7321207,
        ["7321208"] = self.OnSubFinish7321208,
        ["7321216"] = self.OnSubFinish7321216,
        ["7321209"] = self.OnSubFinish7321209,
        ["7321210"] = self.OnSubFinish7321210,
        ["7321211"] = self.OnSubFinish7321211
    }
end

function Quest73212:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73212:Start()
    print("Start")
end

function Quest73212:OnDestroy()
    print("OnDestroy")
end

function Quest73212:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73212:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73212:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73212:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    this:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest73212:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest73212:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73212:OnSubStart7321201(arg1)
    print("OnSubStart7321201")
end

function Quest73212:OnSubFinish7321201(arg1)
    print("OnSubFinish7321201")
end

function Quest73212:OnSubStart7321202(arg1)
    print("OnSubStart7321202")
    actorMgr:CreateActorWithPos("Q7321202_EnterTrigger", "Actor/Gadget/Q7321202_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321202_guide").pos, sceneData:GetDummyPoint(3, "Q7321202_guide").rot, true, false, 3)
end

function Quest73212:OnSubFinish7321202(arg1)
    print("OnSubFinish7321202")
    this:NarratorOnlyTaskByData(datas.NarratorWithId02)
end

function Quest73212:OnSubStart7321203(arg1)
    print("OnSubStart7321203")
    this:CreateQuestNpc(arg1, npcs.Npc20932Data.id, 1)
end

function Quest73212:OnSubFinish7321203(arg1)
    print("OnSubFinish7321203")
end

function Quest73212:OnSubStart7321204(arg1)
    print("OnSubStart7321204")
    this:CreateQuestNpc(arg1, npcs.Npc20932Data.id, 1)
end

function Quest73212:OnSubFinish7321204(arg1)
    print("OnSubFinish7321204")
    this:NPCDestroyImmediately(npcs.Npc20932Data.alias, 3)
end

function Quest73212:OnSubStart7321214(arg1)
    print("OnSubStart7321214")
    actorMgr:CreateActorWithPos("Q7321214_Trigger", "Actor/Gadget/Q7321214_Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321214_guide").pos, sceneData:GetDummyPoint(3, "Q7321214_guide").rot, true, false, 3)
end

function Quest73212:OnSubFinish7321214(arg1)
    print("OnSubFinish7321214")
end

function Quest73212:OnSubStart7321215(arg1)
    print("OnSubStart7321215")
end

function Quest73212:OnSubFinish7321215(arg1)
    print("OnSubFinish7321215")
end

function Quest73212:OnSubStart7321213(arg1)
    print("OnSubStart7321213")
    this:CreateQuestNpc(arg1, npcs.Npc20932Data.id, 1)
end

function Quest73212:OnSubFinish7321213(arg1)
    print("OnSubFinish7321213")
end

function Quest73212:OnSubStart7321205(arg1)
    print("OnSubStart7321205")
    this:CreateQuestNpc(arg1, npcs.Npc20932Data.id, 1)
    actorMgr:CreateActorWithPos("Q7321205Trigger", "Actor/Gadget/Q7321205Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321205_guide_2281").pos, sceneData:GetDummyPoint(3, "Q7321205_guide_2281").rot, true, false, 3)
end

function Quest73212:OnSubFinish7321205(arg1)
    print("OnSubFinish7321205")
    this:NPCDestroyImmediately(npcs.Npc20932Data.alias, 3)
    this:ActorDestroy("Q7321205Trigger")
end

function Quest73212:OnSubStart7321212(arg1)
    print("OnSubStart7321212")
end

function Quest73212:OnSubFinish7321212(arg1)
    print("OnSubFinish7321212")
end

function Quest73212:OnSubStart7321206(arg1)
    print("OnSubStart7321206")
end

function Quest73212:OnSubFinish7321206(arg1)
    print("OnSubFinish7321206")
end

function Quest73212:OnSubStart7321207(arg1)
    print("OnSubStart7321207")
    this:EnablePlayerInput(false)
    this:ShowBlackScreen(0.5, 1, 0, function(arg1)
        this:CreateQuestNpcFaceToPlayer(7321207, npcs.PaimonData.id, 1)
        this:RequestInteraction(npcs.PaimonData.alias)
        this:EnablePlayerInput(true)
    end, nil, nil, "", false, true)
end

function Quest73212:OnSubFinish7321207(arg1)
    print("OnSubFinish7321207")
    this:ShowBlackScreen(0.5, 1, 0, function(arg1)
        this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest73212:OnSubStart7321208(arg1)
    print("OnSubStart7321208")
end

function Quest73212:OnSubFinish7321208(arg1)
    print("OnSubFinish7321208")
end

function Quest73212:OnSubStart7321216(arg1)
    print("OnSubStart7321216")
end

function Quest73212:OnSubFinish7321216(arg1)
    print("OnSubFinish7321216")
end

function Quest73212:OnSubStart7321209(arg1)
    print("OnSubStart7321209")
    actorMgr:CreateActorWithPos("Q7321216Trigger", "Actor/Gadget/Q7321216Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "N1005_T7321209").pos, sceneData:GetDummyPoint(3, "N1005_T7321209").rot, true, false, 3)
end

function Quest73212:OnSubFinish7321209(arg1)
    print("OnSubFinish7321209")
    this:ActorDestroy("Q7321216Trigger")
end

function Quest73212:OnSubStart7321210(arg1)
    print("OnSubStart7321210")
end

function Quest73212:OnSubFinish7321210(arg1)
    print("OnSubFinish7321210")
end

function Quest73212:OnSubStart7321211(arg1)
    print("OnSubStart7321211")
end

function Quest73212:OnSubFinish7321211(arg1)
    print("OnSubFinish7321211")
end

return Quest73212
