require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72100 = class("Quest72100", QuestActorProxy)
Quest72100.defaultAlias = "Quest72100"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72100:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72100:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7210001"] = self.OnSubStart7210001,
        ["7210002"] = self.OnSubStart7210002,
        ["7210007"] = self.OnSubStart7210007,
        ["7210003"] = self.OnSubStart7210003,
        ["7210008"] = self.OnSubStart7210008,
        ["7210012"] = self.OnSubStart7210012,
        ["7210004"] = self.OnSubStart7210004,
        ["7210009"] = self.OnSubStart7210009,
        ["7210013"] = self.OnSubStart7210013,
        ["7210010"] = self.OnSubStart7210010,
        ["7210005"] = self.OnSubStart7210005,
        ["7210014"] = self.OnSubStart7210014,
        ["7210006"] = self.OnSubStart7210006,
        ["7210015"] = self.OnSubStart7210015,
        ["7210011"] = self.OnSubStart7210011,
        ["7210016"] = self.OnSubStart7210016,
        ["7210017"] = self.OnSubStart7210017
    }
end

function Quest72100:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7210001"] = self.OnSubFinish7210001,
        ["7210002"] = self.OnSubFinish7210002,
        ["7210007"] = self.OnSubFinish7210007,
        ["7210003"] = self.OnSubFinish7210003,
        ["7210008"] = self.OnSubFinish7210008,
        ["7210012"] = self.OnSubFinish7210012,
        ["7210004"] = self.OnSubFinish7210004,
        ["7210009"] = self.OnSubFinish7210009,
        ["7210013"] = self.OnSubFinish7210013,
        ["7210010"] = self.OnSubFinish7210010,
        ["7210005"] = self.OnSubFinish7210005,
        ["7210014"] = self.OnSubFinish7210014,
        ["7210006"] = self.OnSubFinish7210006,
        ["7210015"] = self.OnSubFinish7210015,
        ["7210011"] = self.OnSubFinish7210011,
        ["7210016"] = self.OnSubFinish7210016,
        ["7210017"] = self.OnSubFinish7210017
    }
end

function Quest72100:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7210001"] = self.OnSubFailed7210001,
        ["7210002"] = self.OnSubFailed7210002,
        ["7210007"] = self.OnSubFailed7210007,
        ["7210003"] = self.OnSubFailed7210003,
        ["7210008"] = self.OnSubFailed7210008,
        ["7210012"] = self.OnSubFailed7210012,
        ["7210004"] = self.OnSubFailed7210004,
        ["7210009"] = self.OnSubFailed7210009,
        ["7210013"] = self.OnSubFailed7210013,
        ["7210010"] = self.OnSubFailed7210010,
        ["7210005"] = self.OnSubFailed7210005,
        ["7210014"] = self.OnSubFailed7210014,
        ["7210006"] = self.OnSubFailed7210006,
        ["7210015"] = self.OnSubFailed7210015,
        ["7210011"] = self.OnSubFailed7210011,
        ["7210016"] = self.OnSubFailed7210016,
        ["7210017"] = self.OnSubFailed7210017
    }
end

function Quest72100:Start()
    print("Start")
end

function Quest72100:OnDestroy()
    print("OnDestroy")
end

function Quest72100:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72100:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72100:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72100:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("dialogblack&qf")
        self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "QUEST_Message_Q7210002")
    elseif arg1 == 2 then
        self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "QUEST_Message_Q7210003")
    elseif arg1 == 3 then
        self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "QUEST_Message_Q7210802")
    elseif arg1 == 4 then
        self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "QUEST_Message_Q7210005")
    elseif arg1 == 5 then
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end
end

function Quest72100:requestinteraction()
    print("requestinteraction")
    self:RequestInteraction(npcs.Npc20221Data.alias)
end

function Quest72100:Create12()
    print("Create12")
    self:CreateQuestNpcById(7210012, npcs.Npc20221Data.id, 1)
end

function Quest72100:Create13()
    print("Create13")
    self:CreateQuestNpcById(7210013, npcs.Npc20221Data.id, 1)
end

function Quest72100:OnSubStart7210001(arg1)
    print("OnSubStart7210001")
    self:CreateQuestNpc(arg1, npcs.Npc20221Data.id, 1)
end

function Quest72100:OnSubFinish7210001(arg1)
    print("OnSubFinish7210001")
end

function Quest72100:OnSubFailed7210001(arg1)
    print("OnSubFailed7210001")
end

function Quest72100:OnSubStart7210002(arg1)
    print("OnSubStart7210002")
end

function Quest72100:OnSubFinish7210002(arg1)
    print("OnSubFinish7210002")
end

function Quest72100:OnSubFailed7210002(arg1)
    print("OnSubFailed7210002")
end

function Quest72100:OnSubStart7210007(arg1)
    print("OnSubStart7210007")
    self:CreateQuestNpc(arg1, npcs.Npc20221Data.id, 1)
    self:requestinteraction()
end

function Quest72100:OnSubFinish7210007(arg1)
    print("OnSubFinish7210007")
end

function Quest72100:OnSubFailed7210007(arg1)
    print("OnSubFailed7210007")
end

function Quest72100:OnSubStart7210003(arg1)
    print("OnSubStart7210003")
end

function Quest72100:OnSubFinish7210003(arg1)
    print("OnSubFinish7210003")
end

function Quest72100:OnSubFailed7210003(arg1)
    print("OnSubFailed7210003")
end

function Quest72100:OnSubStart7210008(arg1)
    print("OnSubStart7210008")
    self:CreateQuestNpc(arg1, npcs.Npc20221Data.id, 1)
    self:ShowBlackScreen(0.5, 0.5, 0.5, nil, self.requestinteraction, nil, "", false, true)
end

function Quest72100:OnSubFinish7210008(arg1)
    print("OnSubFinish7210008")
    self:SafeDestroyQuestNpc(npcs.Npc20221Data.alias, 3)
end

function Quest72100:OnSubFailed7210008(arg1)
    print("OnSubFailed7210008")
end

function Quest72100:OnSubStart7210012(arg1)
    print("OnSubStart7210012")
    self:CallDelay(2, self.Create12)
end

function Quest72100:OnSubFinish7210012(arg1)
    print("OnSubFinish7210012")
end

function Quest72100:OnSubFailed7210012(arg1)
    print("OnSubFailed7210012")
end

function Quest72100:OnSubStart7210004(arg1)
    print("OnSubStart7210004")
end

function Quest72100:OnSubFinish7210004(arg1)
    print("OnSubFinish7210004")
end

function Quest72100:OnSubFailed7210004(arg1)
    print("OnSubFailed7210004")
end

function Quest72100:OnSubStart7210009(arg1)
    print("OnSubStart7210009")
    self:CreateQuestNpc(arg1, npcs.Npc20221Data.id, 1)
    self:ShowBlackScreen(0.5, 0.5, 0.5, nil, self.requestinteraction, nil, "", false, true)
end

function Quest72100:OnSubFinish7210009(arg1)
    print("OnSubFinish7210009")
    self:SafeDestroyQuestNpc(npcs.Npc20221Data.alias, 3)
end

function Quest72100:OnSubFailed7210009(arg1)
    print("OnSubFailed7210009")
end

function Quest72100:OnSubStart7210013(arg1)
    print("OnSubStart7210013")
    self:CallDelay(2, self.Create13)
end

function Quest72100:OnSubFinish7210013(arg1)
    print("OnSubFinish7210013")
end

function Quest72100:OnSubFailed7210013(arg1)
    print("OnSubFailed7210013")
end

function Quest72100:OnSubStart7210010(arg1)
    print("OnSubStart7210010")
end

function Quest72100:OnSubFinish7210010(arg1)
    print("OnSubFinish7210010")
end

function Quest72100:OnSubFailed7210010(arg1)
    print("OnSubFailed7210010")
end

function Quest72100:OnSubStart7210005(arg1)
    print("OnSubStart7210005")
end

function Quest72100:OnSubFinish7210005(arg1)
    print("OnSubFinish7210005")
end

function Quest72100:OnSubFailed7210005(arg1)
    print("OnSubFailed7210005")
end

function Quest72100:OnSubStart7210014(arg1)
    print("OnSubStart7210014")
end

function Quest72100:OnSubFinish7210014(arg1)
    print("OnSubFinish7210014")
end

function Quest72100:OnSubFailed7210014(arg1)
    print("OnSubFailed7210014")
end

function Quest72100:OnSubStart7210006(arg1)
    print("OnSubStart7210006")
end

function Quest72100:OnSubFinish7210006(arg1)
    print("OnSubFinish7210006")
end

function Quest72100:OnSubFailed7210006(arg1)
    print("OnSubFailed7210006")
end

function Quest72100:OnSubStart7210015(arg1)
    print("OnSubStart7210015")
end

function Quest72100:OnSubFinish7210015(arg1)
    print("OnSubFinish7210015")
end

function Quest72100:OnSubFailed7210015(arg1)
    print("OnSubFailed7210015")
end

function Quest72100:OnSubStart7210011(arg1)
    print("OnSubStart7210011")
end

function Quest72100:OnSubFinish7210011(arg1)
    print("OnSubFinish7210011")
end

function Quest72100:OnSubFailed7210011(arg1)
    print("OnSubFailed7210011")
end

function Quest72100:OnSubStart7210016(arg1)
    print("OnSubStart7210016")
end

function Quest72100:OnSubFinish7210016(arg1)
    print("OnSubFinish7210016")
end

function Quest72100:OnSubFailed7210016(arg1)
    print("OnSubFailed7210016")
end

function Quest72100:OnSubStart7210017(arg1)
    print("OnSubStart7210017")
end

function Quest72100:OnSubFinish7210017(arg1)
    print("OnSubFinish7210017")
end

function Quest72100:OnSubFailed7210017(arg1)
    print("OnSubFailed7210017")
end

return Quest72100
