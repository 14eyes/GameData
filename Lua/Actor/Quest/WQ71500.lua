require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71500 = class("Quest71500", QuestActorProxy)
Quest71500.defaultAlias = "Quest71500"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest71500:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71500:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7150012"] = self.OnSubStart7150012,
        ["7150001"] = self.OnSubStart7150001,
        ["7150002"] = self.OnSubStart7150002,
        ["7150003"] = self.OnSubStart7150003,
        ["7150004"] = self.OnSubStart7150004,
        ["7150010"] = self.OnSubStart7150010,
        ["7150005"] = self.OnSubStart7150005,
        ["7150009"] = self.OnSubStart7150009,
        ["7150006"] = self.OnSubStart7150006,
        ["7150007"] = self.OnSubStart7150007,
        ["7150008"] = self.OnSubStart7150008,
        ["7150011"] = self.OnSubStart7150011
    }
end

function Quest71500:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7150012"] = self.OnSubFinish7150012,
        ["7150001"] = self.OnSubFinish7150001,
        ["7150002"] = self.OnSubFinish7150002,
        ["7150003"] = self.OnSubFinish7150003,
        ["7150004"] = self.OnSubFinish7150004,
        ["7150010"] = self.OnSubFinish7150010,
        ["7150005"] = self.OnSubFinish7150005,
        ["7150009"] = self.OnSubFinish7150009,
        ["7150006"] = self.OnSubFinish7150006,
        ["7150007"] = self.OnSubFinish7150007,
        ["7150008"] = self.OnSubFinish7150008,
        ["7150011"] = self.OnSubFinish7150011
    }
end

function Quest71500:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7150012"] = self.OnSubFailed7150012,
        ["7150001"] = self.OnSubFailed7150001,
        ["7150002"] = self.OnSubFailed7150002,
        ["7150003"] = self.OnSubFailed7150003,
        ["7150004"] = self.OnSubFailed7150004,
        ["7150010"] = self.OnSubFailed7150010,
        ["7150005"] = self.OnSubFailed7150005,
        ["7150009"] = self.OnSubFailed7150009,
        ["7150006"] = self.OnSubFailed7150006,
        ["7150007"] = self.OnSubFailed7150007,
        ["7150008"] = self.OnSubFailed7150008,
        ["7150011"] = self.OnSubFailed7150011
    }
end

function Quest71500:Start()
    print("Start")
end

function Quest71500:OnDestroy()
    print("OnDestroy")
end

function Quest71500:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71500:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71500:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71500:Finishself()
    print("Finishself")
    self:FinishQuestID(false, 7150009)
end

function Quest71500:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:FinishQuestID(false, 7050001)
    end
end

function Quest71500:DestoryNPC()
    print("DestoryNPC")
    self:GetQuestNpcActor(npcs.Npc10258Data.alias):DestroyWithDisappear(false)
end

function Quest71500:ShowTutorial()
    print("ShowTutorial")
    self:ShowTutorialDialog(911)
end

function Quest71500:OnSubStart7150012(arg1)
    print("OnSubStart7150012")
end

function Quest71500:OnSubFinish7150012(arg1)
    print("OnSubFinish7150012")
end

function Quest71500:OnSubFailed7150012(arg1)
    print("OnSubFailed7150012")
end

function Quest71500:OnSubStart7150001(arg1)
    print("OnSubStart7150001")
    self:CreateQuestNpc(arg1, npcs.Npc10258Data.id, 0)
end

function Quest71500:OnSubFinish7150001(arg1)
    print("OnSubFinish7150001")
end

function Quest71500:OnSubFailed7150001(arg1)
    print("OnSubFailed7150001")
end

function Quest71500:OnSubStart7150002(arg1)
    print("OnSubStart7150002")
end

function Quest71500:OnSubFinish7150002(arg1)
    print("OnSubFinish7150002")
end

function Quest71500:OnSubFailed7150002(arg1)
    print("OnSubFailed7150002")
end

function Quest71500:OnSubStart7150003(arg1)
    print("OnSubStart7150003")
end

function Quest71500:OnSubFinish7150003(arg1)
    print("OnSubFinish7150003")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "QUEST_Message_Q7150003", false, true)
end

function Quest71500:OnSubFailed7150003(arg1)
    print("OnSubFailed7150003")
    self:TransmitPlayerById(arg1, 1)
end

function Quest71500:OnSubStart7150004(arg1)
    print("OnSubStart7150004")
end

function Quest71500:OnSubFinish7150004(arg1)
    print("OnSubFinish7150004")
end

function Quest71500:OnSubFailed7150004(arg1)
    print("OnSubFailed7150004")
end

function Quest71500:OnSubStart7150010(arg1)
    print("OnSubStart7150010")
end

function Quest71500:OnSubFinish7150010(arg1)
    print("OnSubFinish7150010")
    self:ActionSafeCall(self.ShowTutorial)
end

function Quest71500:OnSubFailed7150010(arg1)
    print("OnSubFailed7150010")
end

function Quest71500:OnSubStart7150005(arg1)
    print("OnSubStart7150005")
end

function Quest71500:OnSubFinish7150005(arg1)
    print("OnSubFinish7150005")
end

function Quest71500:OnSubFailed7150005(arg1)
    print("OnSubFailed7150005")
end

function Quest71500:OnSubStart7150009(arg1)
    print("OnSubStart7150009")
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self.Finishself)
end

function Quest71500:OnSubFinish7150009(arg1)
    print("OnSubFinish7150009")
end

function Quest71500:OnSubFailed7150009(arg1)
    print("OnSubFailed7150009")
end

function Quest71500:OnSubStart7150006(arg1)
    print("OnSubStart7150006")
end

function Quest71500:OnSubFinish7150006(arg1)
    print("OnSubFinish7150006")
end

function Quest71500:OnSubFailed7150006(arg1)
    print("OnSubFailed7150006")
end

function Quest71500:OnSubStart7150007(arg1)
    print("OnSubStart7150007")
end

function Quest71500:OnSubFinish7150007(arg1)
    print("OnSubFinish7150007")
end

function Quest71500:OnSubFailed7150007(arg1)
    print("OnSubFailed7150007")
end

function Quest71500:OnSubStart7150008(arg1)
    print("OnSubStart7150008")
end

function Quest71500:OnSubFinish7150008(arg1)
    print("OnSubFinish7150008")
end

function Quest71500:OnSubFailed7150008(arg1)
    print("OnSubFailed7150008")
end

function Quest71500:OnSubStart7150011(arg1)
    print("OnSubStart7150011")
end

function Quest71500:OnSubFinish7150011(arg1)
    print("OnSubFinish7150011")
    self:ShowBlackScreen(0.25, 1, 0.5, self.DestoryNPC, nil, nil, "", false, true)
end

function Quest71500:OnSubFailed7150011(arg1)
    print("OnSubFailed7150011")
end

return Quest71500
