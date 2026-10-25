require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79013 = class("Quest79013", QuestActorProxy)
Quest79013.defaultAlias = "Quest79013"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest79013:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7901301"] = self.OnSubStart7901301,
        ["7901302"] = self.OnSubStart7901302,
        ["7901303"] = self.OnSubStart7901303,
        ["7901304"] = self.OnSubStart7901304,
        ["7901305"] = self.OnSubStart7901305,
        ["7901306"] = self.OnSubStart7901306,
        ["7901329"] = self.OnSubStart7901329,
        ["7901307"] = self.OnSubStart7901307,
        ["7901308"] = self.OnSubStart7901308,
        ["7901309"] = self.OnSubStart7901309,
        ["7901310"] = self.OnSubStart7901310,
        ["7901323"] = self.OnSubStart7901323,
        ["7901311"] = self.OnSubStart7901311,
        ["7901324"] = self.OnSubStart7901324,
        ["7901312"] = self.OnSubStart7901312,
        ["7901313"] = self.OnSubStart7901313,
        ["7901314"] = self.OnSubStart7901314,
        ["7901330"] = self.OnSubStart7901330,
        ["7901315"] = self.OnSubStart7901315,
        ["7901316"] = self.OnSubStart7901316,
        ["7901317"] = self.OnSubStart7901317,
        ["7901325"] = self.OnSubStart7901325,
        ["7901318"] = self.OnSubStart7901318,
        ["7901327"] = self.OnSubStart7901327,
        ["7901328"] = self.OnSubStart7901328,
        ["7901319"] = self.OnSubStart7901319,
        ["7901331"] = self.OnSubStart7901331,
        ["7901321"] = self.OnSubStart7901321,
        ["7901322"] = self.OnSubStart7901322,
        ["7901326"] = self.OnSubStart7901326
    }
end

function Quest79013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7901301"] = self.OnSubFinish7901301,
        ["7901302"] = self.OnSubFinish7901302,
        ["7901303"] = self.OnSubFinish7901303,
        ["7901304"] = self.OnSubFinish7901304,
        ["7901305"] = self.OnSubFinish7901305,
        ["7901306"] = self.OnSubFinish7901306,
        ["7901329"] = self.OnSubFinish7901329,
        ["7901307"] = self.OnSubFinish7901307,
        ["7901308"] = self.OnSubFinish7901308,
        ["7901309"] = self.OnSubFinish7901309,
        ["7901310"] = self.OnSubFinish7901310,
        ["7901323"] = self.OnSubFinish7901323,
        ["7901311"] = self.OnSubFinish7901311,
        ["7901324"] = self.OnSubFinish7901324,
        ["7901312"] = self.OnSubFinish7901312,
        ["7901313"] = self.OnSubFinish7901313,
        ["7901314"] = self.OnSubFinish7901314,
        ["7901330"] = self.OnSubFinish7901330,
        ["7901315"] = self.OnSubFinish7901315,
        ["7901316"] = self.OnSubFinish7901316,
        ["7901317"] = self.OnSubFinish7901317,
        ["7901325"] = self.OnSubFinish7901325,
        ["7901318"] = self.OnSubFinish7901318,
        ["7901327"] = self.OnSubFinish7901327,
        ["7901328"] = self.OnSubFinish7901328,
        ["7901319"] = self.OnSubFinish7901319,
        ["7901331"] = self.OnSubFinish7901331,
        ["7901321"] = self.OnSubFinish7901321,
        ["7901322"] = self.OnSubFinish7901322,
        ["7901326"] = self.OnSubFinish7901326
    }
end

function Quest79013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79013:Start()
    print("Start")
end

function Quest79013:OnDestroy()
    print("OnDestroy")
end

function Quest79013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79013:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest79013:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
end

function Quest79013:OnSubStart7901301(arg1)
    print("OnSubStart7901301")
end

function Quest79013:OnSubFinish7901301(arg1)
    print("OnSubFinish7901301")
end

function Quest79013:OnSubStart7901302(arg1)
    print("OnSubStart7901302")
    self:CreateQuestNpcWithTrigger("Q7901302Trigger", 7901302, 1005, 1, 30)
end

function Quest79013:OnSubFinish7901302(arg1)
    print("OnSubFinish7901302")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79013:OnSubStart7901303(arg1)
    print("OnSubStart7901303")
    actorMgr:CreateActorWithPos("Q7901303Trigger", "Actor/Gadget/Q7901303Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "guide_Q7901303").pos, sceneData:GetDummyPoint(9, "guide_Q7901303").rot, true, false, 9)
end

function Quest79013:OnSubFinish7901303(arg1)
    print("OnSubFinish7901303")
end

function Quest79013:OnSubStart7901304(arg1)
    print("OnSubStart7901304")
end

function Quest79013:OnSubFinish7901304(arg1)
    print("OnSubFinish7901304")
end

function Quest79013:OnSubStart7901305(arg1)
    print("OnSubStart7901305")
    actorMgr:CreateActorWithPos("Q7901305Trigger", "Actor/Gadget/Q7901305Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "guide_Q7901305").pos, sceneData:GetDummyPoint(9, "guide_Q7901305").rot, true, false, 9)
end

function Quest79013:OnSubFinish7901305(arg1)
    print("OnSubFinish7901305")
end

function Quest79013:OnSubStart7901306(arg1)
    print("OnSubStart7901306")
end

function Quest79013:OnSubFinish7901306(arg1)
    print("OnSubFinish7901306")
end

function Quest79013:OnSubStart7901329(arg1)
    print("OnSubStart7901329")
    self:CreateQuestNpcWithTrigger("Q7901329Trigger", 7901329, npcs.PaimonData.id, 1, 30)
end

function Quest79013:OnSubFinish7901329(arg1)
    print("OnSubFinish7901329")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79013:OnSubStart7901307(arg1)
    print("OnSubStart7901307")
end

function Quest79013:OnSubFinish7901307(arg1)
    print("OnSubFinish7901307")
end

function Quest79013:OnSubStart7901308(arg1)
    print("OnSubStart7901308")
    actorMgr:CreateActorWithPos("Q7901308Trigger", "Actor/Gadget/Q7901308Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "guide_Q7901308").pos, sceneData:GetDummyPoint(9, "guide_Q7901308").rot, true, false, 9)
end

function Quest79013:OnSubFinish7901308(arg1)
    print("OnSubFinish7901308")
end

function Quest79013:OnSubStart7901309(arg1)
    print("OnSubStart7901309")
end

function Quest79013:OnSubFinish7901309(arg1)
    print("OnSubFinish7901309")
end

function Quest79013:OnSubStart7901310(arg1)
    print("OnSubStart7901310")
end

function Quest79013:OnSubFinish7901310(arg1)
    print("OnSubFinish7901310")
end

function Quest79013:OnSubStart7901323(arg1)
    print("OnSubStart7901323")
    self:CreateQuestNpcWithTrigger("Q7901323Trigger", 7901323, npcs.PaimonData.id, 1, 30)
end

function Quest79013:OnSubFinish7901323(arg1)
    print("OnSubFinish7901323")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79013:OnSubStart7901311(arg1)
    print("OnSubStart7901311")
end

function Quest79013:OnSubFinish7901311(arg1)
    print("OnSubFinish7901311")
end

function Quest79013:OnSubStart7901324(arg1)
    print("OnSubStart7901324")
    self:CreateQuestNpcWithTrigger("Q7901324Trigger", 7901324, npcs.PaimonData.id, 1, 30)
end

function Quest79013:OnSubFinish7901324(arg1)
    print("OnSubFinish7901324")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79013:OnSubStart7901312(arg1)
    print("OnSubStart7901312")
end

function Quest79013:OnSubFinish7901312(arg1)
    print("OnSubFinish7901312")
end

function Quest79013:OnSubStart7901313(arg1)
    print("OnSubStart7901313")
    actorMgr:CreateActorWithPos("Q7901313Trigger", "Actor/Gadget/Q7901313Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "guide_Q7901313").pos, sceneData:GetDummyPoint(9, "guide_Q7901313").rot, true, false, 9)
end

function Quest79013:OnSubFinish7901313(arg1)
    print("OnSubFinish7901313")
end

function Quest79013:OnSubStart7901314(arg1)
    print("OnSubStart7901314")
end

function Quest79013:OnSubFinish7901314(arg1)
    print("OnSubFinish7901314")
end

function Quest79013:OnSubStart7901330(arg1)
    print("OnSubStart7901330")
    self:CreateQuestNpcFaceToPlayer(7901330, npcs.PaimonData.id, 1.5)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest79013:OnSubFinish7901330(arg1)
    print("OnSubFinish7901330")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79013:OnSubStart7901315(arg1)
    print("OnSubStart7901315")
end

function Quest79013:OnSubFinish7901315(arg1)
    print("OnSubFinish7901315")
end

function Quest79013:OnSubStart7901316(arg1)
    print("OnSubStart7901316")
end

function Quest79013:OnSubFinish7901316(arg1)
    print("OnSubFinish7901316")
end

function Quest79013:OnSubStart7901317(arg1)
    print("OnSubStart7901317")
end

function Quest79013:OnSubFinish7901317(arg1)
    print("OnSubFinish7901317")
end

function Quest79013:OnSubStart7901325(arg1)
    print("OnSubStart7901325")
    self:CreateQuestNpcWithTrigger("Q7901325Trigger", 7901325, npcs.PaimonData.id, 1, 30)
end

function Quest79013:OnSubFinish7901325(arg1)
    print("OnSubFinish7901325")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79013:OnSubStart7901318(arg1)
    print("OnSubStart7901318")
end

function Quest79013:OnSubFinish7901318(arg1)
    print("OnSubFinish7901318")
end

function Quest79013:OnSubStart7901327(arg1)
    print("OnSubStart7901327")
    self:CreateQuestNpcWithTrigger("Q7901327Trigger", 7901327, npcs.PaimonData.id, 1, 30)
end

function Quest79013:OnSubFinish7901327(arg1)
    print("OnSubFinish7901327")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79013:OnSubStart7901328(arg1)
    print("OnSubStart7901328")
end

function Quest79013:OnSubFinish7901328(arg1)
    print("OnSubFinish7901328")
end

function Quest79013:OnSubStart7901319(arg1)
    print("OnSubStart7901319")
end

function Quest79013:OnSubFinish7901319(arg1)
    print("OnSubFinish7901319")
end

function Quest79013:OnSubStart7901331(arg1)
    print("OnSubStart7901331")
end

function Quest79013:OnSubFinish7901331(arg1)
    print("OnSubFinish7901331")
end

function Quest79013:OnSubStart7901321(arg1)
    print("OnSubStart7901321")
end

function Quest79013:OnSubFinish7901321(arg1)
    print("OnSubFinish7901321")
end

function Quest79013:OnSubStart7901322(arg1)
    print("OnSubStart7901322")
end

function Quest79013:OnSubFinish7901322(arg1)
    print("OnSubFinish7901322")
end

function Quest79013:OnSubStart7901326(arg1)
    print("OnSubStart7901326")
    self:CreateQuestNpcWithTriggerBlack("Q7901326Trigger", 7901326, npcs.PaimonData.id, 1, 30, 1)
end

function Quest79013:OnSubFinish7901326(arg1)
    print("OnSubFinish7901326")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

return Quest79013
