require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72107 = class("Quest72107", QuestActorProxy)
Quest72107.defaultAlias = "Quest72107"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72107:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72107:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7210701"] = self.OnSubStart7210701,
        ["7210732"] = self.OnSubStart7210732,
        ["7210733"] = self.OnSubStart7210733,
        ["7210734"] = self.OnSubStart7210734,
        ["7210702"] = self.OnSubStart7210702,
        ["7210704"] = self.OnSubStart7210704,
        ["7210703"] = self.OnSubStart7210703,
        ["7210705"] = self.OnSubStart7210705,
        ["7210706"] = self.OnSubStart7210706,
        ["7210707"] = self.OnSubStart7210707,
        ["7210708"] = self.OnSubStart7210708,
        ["7210714"] = self.OnSubStart7210714,
        ["7210715"] = self.OnSubStart7210715,
        ["7210721"] = self.OnSubStart7210721,
        ["7210722"] = self.OnSubStart7210722,
        ["7210723"] = self.OnSubStart7210723,
        ["7210709"] = self.OnSubStart7210709,
        ["7210716"] = self.OnSubStart7210716,
        ["7210710"] = self.OnSubStart7210710,
        ["7210717"] = self.OnSubStart7210717,
        ["7210711"] = self.OnSubStart7210711,
        ["7210718"] = self.OnSubStart7210718,
        ["7210712"] = self.OnSubStart7210712,
        ["7210719"] = self.OnSubStart7210719,
        ["7210713"] = self.OnSubStart7210713,
        ["7210720"] = self.OnSubStart7210720,
        ["7210724"] = self.OnSubStart7210724,
        ["7210725"] = self.OnSubStart7210725,
        ["7210726"] = self.OnSubStart7210726,
        ["7210727"] = self.OnSubStart7210727,
        ["7210728"] = self.OnSubStart7210728,
        ["7210729"] = self.OnSubStart7210729,
        ["7210730"] = self.OnSubStart7210730,
        ["7210731"] = self.OnSubStart7210731
    }
end

function Quest72107:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7210701"] = self.OnSubFinish7210701,
        ["7210732"] = self.OnSubFinish7210732,
        ["7210733"] = self.OnSubFinish7210733,
        ["7210734"] = self.OnSubFinish7210734,
        ["7210702"] = self.OnSubFinish7210702,
        ["7210704"] = self.OnSubFinish7210704,
        ["7210703"] = self.OnSubFinish7210703,
        ["7210705"] = self.OnSubFinish7210705,
        ["7210706"] = self.OnSubFinish7210706,
        ["7210707"] = self.OnSubFinish7210707,
        ["7210708"] = self.OnSubFinish7210708,
        ["7210714"] = self.OnSubFinish7210714,
        ["7210715"] = self.OnSubFinish7210715,
        ["7210721"] = self.OnSubFinish7210721,
        ["7210722"] = self.OnSubFinish7210722,
        ["7210723"] = self.OnSubFinish7210723,
        ["7210709"] = self.OnSubFinish7210709,
        ["7210716"] = self.OnSubFinish7210716,
        ["7210710"] = self.OnSubFinish7210710,
        ["7210717"] = self.OnSubFinish7210717,
        ["7210711"] = self.OnSubFinish7210711,
        ["7210718"] = self.OnSubFinish7210718,
        ["7210712"] = self.OnSubFinish7210712,
        ["7210719"] = self.OnSubFinish7210719,
        ["7210713"] = self.OnSubFinish7210713,
        ["7210720"] = self.OnSubFinish7210720,
        ["7210724"] = self.OnSubFinish7210724,
        ["7210725"] = self.OnSubFinish7210725,
        ["7210726"] = self.OnSubFinish7210726,
        ["7210727"] = self.OnSubFinish7210727,
        ["7210728"] = self.OnSubFinish7210728,
        ["7210729"] = self.OnSubFinish7210729,
        ["7210730"] = self.OnSubFinish7210730,
        ["7210731"] = self.OnSubFinish7210731
    }
end

function Quest72107:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7210701"] = self.OnSubFailed7210701,
        ["7210732"] = self.OnSubFailed7210732,
        ["7210733"] = self.OnSubFailed7210733,
        ["7210734"] = self.OnSubFailed7210734,
        ["7210702"] = self.OnSubFailed7210702,
        ["7210704"] = self.OnSubFailed7210704,
        ["7210703"] = self.OnSubFailed7210703,
        ["7210705"] = self.OnSubFailed7210705,
        ["7210706"] = self.OnSubFailed7210706,
        ["7210707"] = self.OnSubFailed7210707,
        ["7210708"] = self.OnSubFailed7210708,
        ["7210714"] = self.OnSubFailed7210714,
        ["7210715"] = self.OnSubFailed7210715,
        ["7210721"] = self.OnSubFailed7210721,
        ["7210722"] = self.OnSubFailed7210722,
        ["7210723"] = self.OnSubFailed7210723,
        ["7210709"] = self.OnSubFailed7210709,
        ["7210716"] = self.OnSubFailed7210716,
        ["7210710"] = self.OnSubFailed7210710,
        ["7210717"] = self.OnSubFailed7210717,
        ["7210711"] = self.OnSubFailed7210711,
        ["7210718"] = self.OnSubFailed7210718,
        ["7210712"] = self.OnSubFailed7210712,
        ["7210719"] = self.OnSubFailed7210719,
        ["7210713"] = self.OnSubFailed7210713,
        ["7210720"] = self.OnSubFailed7210720,
        ["7210724"] = self.OnSubFailed7210724,
        ["7210725"] = self.OnSubFailed7210725,
        ["7210726"] = self.OnSubFailed7210726,
        ["7210727"] = self.OnSubFailed7210727,
        ["7210728"] = self.OnSubFailed7210728,
        ["7210729"] = self.OnSubFailed7210729,
        ["7210730"] = self.OnSubFailed7210730,
        ["7210731"] = self.OnSubFailed7210731
    }
end

function Quest72107:Start()
    print("Start")
end

function Quest72107:OnDestroy()
    print("OnDestroy")
end

function Quest72107:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72107:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72107:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72107:requestinteractionM()
    print("requestinteractionM")
    self:RequestInteraction(npcs.Npc20285Data.alias)
end

function Quest72107:requestinteractionW()
    print("requestinteractionW")
    self:RequestInteraction(npcs.Npc20286Data.alias)
end

function Quest72107:inputOFF()
    print("inputOFF")
    self:EnablePlayerInput(false)
end

function Quest72107:inputON()
    print("inputON")
    self:EnablePlayerInput(true)
end

function Quest72107:Callinteraction()
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
    self.CreateQuestNpcByIdWithPos(self, 7210733, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest72107:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("invoke1")
        self:ShowReadingDialog(101537)
    elseif arg1 == 2 then
        print("dialogblack")
        self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "QUEST_Message_Q7210001")
    end
end

function Quest72107:OnSubStart7210701(arg1)
    print("OnSubStart7210701")
end

function Quest72107:OnSubFinish7210701(arg1)
    print("OnSubFinish7210701")
end

function Quest72107:OnSubFailed7210701(arg1)
    print("OnSubFailed7210701")
end

function Quest72107:OnSubStart7210732(arg1)
    print("OnSubStart7210732")
end

function Quest72107:OnSubFinish7210732(arg1)
    print("OnSubFinish7210732")
end

function Quest72107:OnSubFailed7210732(arg1)
    print("OnSubFailed7210732")
end

function Quest72107:OnSubStart7210733(arg1)
    print("OnSubStart7210733")
    self:CallDelay(0, self.Callinteraction)
    self:CallDelay(0, self.inputOFF)
    self:CallDelay(1, self.inputON)
end

function Quest72107:OnSubFinish7210733(arg1)
    print("OnSubFinish7210733")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72107:OnSubFailed7210733(arg1)
    print("OnSubFailed7210733")
end

function Quest72107:OnSubStart7210734(arg1)
    print("OnSubStart7210734")
end

function Quest72107:OnSubFinish7210734(arg1)
    print("OnSubFinish7210734")
end

function Quest72107:OnSubFailed7210734(arg1)
    print("OnSubFailed7210734")
end

function Quest72107:OnSubStart7210702(arg1)
    print("OnSubStart7210702")
end

function Quest72107:OnSubFinish7210702(arg1)
    print("OnSubFinish7210702")
end

function Quest72107:OnSubFailed7210702(arg1)
    print("OnSubFailed7210702")
end

function Quest72107:OnSubStart7210704(arg1)
    print("OnSubStart7210704")
end

function Quest72107:OnSubFinish7210704(arg1)
    print("OnSubFinish7210704")
end

function Quest72107:OnSubFailed7210704(arg1)
    print("OnSubFailed7210704")
end

function Quest72107:OnSubStart7210703(arg1)
    print("OnSubStart7210703")
end

function Quest72107:OnSubFinish7210703(arg1)
    print("OnSubFinish7210703")
end

function Quest72107:OnSubFailed7210703(arg1)
    print("OnSubFailed7210703")
end

function Quest72107:OnSubStart7210705(arg1)
    print("OnSubStart7210705")
end

function Quest72107:OnSubFinish7210705(arg1)
    print("OnSubFinish7210705")
end

function Quest72107:OnSubFailed7210705(arg1)
    print("OnSubFailed7210705")
end

function Quest72107:OnSubStart7210706(arg1)
    print("OnSubStart7210706")
end

function Quest72107:OnSubFinish7210706(arg1)
    print("OnSubFinish7210706")
end

function Quest72107:OnSubFailed7210706(arg1)
    print("OnSubFailed7210706")
end

function Quest72107:OnSubStart7210707(arg1)
    print("OnSubStart7210707")
end

function Quest72107:OnSubFinish7210707(arg1)
    print("OnSubFinish7210707")
end

function Quest72107:OnSubFailed7210707(arg1)
    print("OnSubFailed7210707")
end

function Quest72107:OnSubStart7210708(arg1)
    print("OnSubStart7210708")
end

function Quest72107:OnSubFinish7210708(arg1)
    print("OnSubFinish7210708")
end

function Quest72107:OnSubFailed7210708(arg1)
    print("OnSubFailed7210708")
end

function Quest72107:OnSubStart7210714(arg1)
    print("OnSubStart7210714")
end

function Quest72107:OnSubFinish7210714(arg1)
    print("OnSubFinish7210714")
end

function Quest72107:OnSubFailed7210714(arg1)
    print("OnSubFailed7210714")
end

function Quest72107:OnSubStart7210715(arg1)
    print("OnSubStart7210715")
end

function Quest72107:OnSubFinish7210715(arg1)
    print("OnSubFinish7210715")
end

function Quest72107:OnSubFailed7210715(arg1)
    print("OnSubFailed7210715")
end

function Quest72107:OnSubStart7210721(arg1)
    print("OnSubStart7210721")
end

function Quest72107:OnSubFinish7210721(arg1)
    print("OnSubFinish7210721")
end

function Quest72107:OnSubFailed7210721(arg1)
    print("OnSubFailed7210721")
end

function Quest72107:OnSubStart7210722(arg1)
    print("OnSubStart7210722")
end

function Quest72107:OnSubFinish7210722(arg1)
    print("OnSubFinish7210722")
end

function Quest72107:OnSubFailed7210722(arg1)
    print("OnSubFailed7210722")
end

function Quest72107:OnSubStart7210723(arg1)
    print("OnSubStart7210723")
end

function Quest72107:OnSubFinish7210723(arg1)
    print("OnSubFinish7210723")
end

function Quest72107:OnSubFailed7210723(arg1)
    print("OnSubFailed7210723")
end

function Quest72107:OnSubStart7210709(arg1)
    print("OnSubStart7210709")
end

function Quest72107:OnSubFinish7210709(arg1)
    print("OnSubFinish7210709")
end

function Quest72107:OnSubFailed7210709(arg1)
    print("OnSubFailed7210709")
end

function Quest72107:OnSubStart7210716(arg1)
    print("OnSubStart7210716")
    self:CreateQuestNpc(arg1, npcs.Npc20285Data.id, 1)
    self:CallDelay(1, self.requestinteractionM)
end

function Quest72107:OnSubFinish7210716(arg1)
    print("OnSubFinish7210716")
    self:GetQuestNpcActor(npcs.Npc20285Data.alias):DestroyWithDither(false, 2)
end

function Quest72107:OnSubFailed7210716(arg1)
    print("OnSubFailed7210716")
end

function Quest72107:OnSubStart7210710(arg1)
    print("OnSubStart7210710")
end

function Quest72107:OnSubFinish7210710(arg1)
    print("OnSubFinish7210710")
end

function Quest72107:OnSubFailed7210710(arg1)
    print("OnSubFailed7210710")
end

function Quest72107:OnSubStart7210717(arg1)
    print("OnSubStart7210717")
    self:CreateQuestNpc(arg1, npcs.Npc20285Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20286Data.id, 2)
    self:CallDelay(1, self.requestinteractionM)
    self:CallDelay(1, self.requestinteractionW)
end

function Quest72107:OnSubFinish7210717(arg1)
    print("OnSubFinish7210717")
    self:GetQuestNpcActor(npcs.Npc20285Data.alias):DestroyWithDither(false, 2)
    self:GetQuestNpcActor(npcs.Npc20286Data.alias):DestroyWithDither(false, 2)
end

function Quest72107:OnSubFailed7210717(arg1)
    print("OnSubFailed7210717")
end

function Quest72107:OnSubStart7210711(arg1)
    print("OnSubStart7210711")
end

function Quest72107:OnSubFinish7210711(arg1)
    print("OnSubFinish7210711")
end

function Quest72107:OnSubFailed7210711(arg1)
    print("OnSubFailed7210711")
end

function Quest72107:OnSubStart7210718(arg1)
    print("OnSubStart7210718")
    self:CreateQuestNpc(arg1, npcs.Npc20285Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20285Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CallDelay(1, self.requestinteractionM)
end

function Quest72107:OnSubFinish7210718(arg1)
    print("OnSubFinish7210718")
    self:GetQuestNpcActor(npcs.Npc20285Data.alias):DestroyWithDither(false, 2)
end

function Quest72107:OnSubFailed7210718(arg1)
    print("OnSubFailed7210718")
end

function Quest72107:OnSubStart7210712(arg1)
    print("OnSubStart7210712")
end

function Quest72107:OnSubFinish7210712(arg1)
    print("OnSubFinish7210712")
end

function Quest72107:OnSubFailed7210712(arg1)
    print("OnSubFailed7210712")
end

function Quest72107:OnSubStart7210719(arg1)
    print("OnSubStart7210719")
    self:CreateQuestNpc(arg1, npcs.Npc20286Data.id, 1)
    self:CallDelay(1, self.requestinteractionW)
end

function Quest72107:OnSubFinish7210719(arg1)
    print("OnSubFinish7210719")
    self:GetQuestNpcActor(npcs.Npc20286Data.alias):DestroyWithDither(false, 2)
end

function Quest72107:OnSubFailed7210719(arg1)
    print("OnSubFailed7210719")
end

function Quest72107:OnSubStart7210713(arg1)
    print("OnSubStart7210713")
end

function Quest72107:OnSubFinish7210713(arg1)
    print("OnSubFinish7210713")
end

function Quest72107:OnSubFailed7210713(arg1)
    print("OnSubFailed7210713")
end

function Quest72107:OnSubStart7210720(arg1)
    print("OnSubStart7210720")
    self:CreateQuestNpc(arg1, npcs.Npc20285Data.id, 1)
    self:CallDelay(1, self.requestinteractionM)
end

function Quest72107:OnSubFinish7210720(arg1)
    print("OnSubFinish7210720")
    self:GetQuestNpcActor(npcs.Npc20285Data.alias):DestroyWithDither(false, 2)
end

function Quest72107:OnSubFailed7210720(arg1)
    print("OnSubFailed7210720")
end

function Quest72107:OnSubStart7210724(arg1)
    print("OnSubStart7210724")
end

function Quest72107:OnSubFinish7210724(arg1)
    print("OnSubFinish7210724")
end

function Quest72107:OnSubFailed7210724(arg1)
    print("OnSubFailed7210724")
end

function Quest72107:OnSubStart7210725(arg1)
    print("OnSubStart7210725")
    self:CreateQuestNpc(arg1, npcs.Npc20285Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20286Data.id, 2)
    self:CallDelay(1, self.requestinteractionW)
end

function Quest72107:OnSubFinish7210725(arg1)
    print("OnSubFinish7210725")
    self:GetQuestNpcActor(npcs.Npc20285Data.alias):DestroyWithDither(false, 2)
    self:GetQuestNpcActor(npcs.Npc20286Data.alias):DestroyWithDither(false, 2)
end

function Quest72107:OnSubFailed7210725(arg1)
    print("OnSubFailed7210725")
end

function Quest72107:OnSubStart7210726(arg1)
    print("OnSubStart7210726")
end

function Quest72107:OnSubFinish7210726(arg1)
    print("OnSubFinish7210726")
end

function Quest72107:OnSubFailed7210726(arg1)
    print("OnSubFailed7210726")
end

function Quest72107:OnSubStart7210727(arg1)
    print("OnSubStart7210727")
    self:CreateQuestNpc(arg1, npcs.Npc20285Data.id, 1)
    self:CallDelay(1, self.requestinteractionM)
    self:GetQuestNpcActor(npcs.Npc20285Data.alias):DoFreeStyle(1240, true, nil, true, true, false)
end

function Quest72107:OnSubFinish7210727(arg1)
    print("OnSubFinish7210727")
    self:GetQuestNpcActor(npcs.Npc20285Data.alias):DestroyWithDither(false, 2)
end

function Quest72107:OnSubFailed7210727(arg1)
    print("OnSubFailed7210727")
end

function Quest72107:OnSubStart7210728(arg1)
    print("OnSubStart7210728")
end

function Quest72107:OnSubFinish7210728(arg1)
    print("OnSubFinish7210728")
end

function Quest72107:OnSubFailed7210728(arg1)
    print("OnSubFailed7210728")
end

function Quest72107:OnSubStart7210729(arg1)
    print("OnSubStart7210729")
    self:CreateQuestNpc(arg1, npcs.Npc20286Data.id, 1)
    self:CallDelay(1, self.requestinteractionW)
end

function Quest72107:OnSubFinish7210729(arg1)
    print("OnSubFinish7210729")
    self:GetQuestNpcActor(npcs.Npc20286Data.alias):DestroyWithDither(false, 2)
end

function Quest72107:OnSubFailed7210729(arg1)
    print("OnSubFailed7210729")
end

function Quest72107:OnSubStart7210730(arg1)
    print("OnSubStart7210730")
end

function Quest72107:OnSubFinish7210730(arg1)
    print("OnSubFinish7210730")
end

function Quest72107:OnSubFailed7210730(arg1)
    print("OnSubFailed7210730")
end

function Quest72107:OnSubStart7210731(arg1)
    print("OnSubStart7210731")
    self:CreateQuestNpc(arg1, npcs.Npc20285Data.id, 1)
    self:CallDelay(1, self.requestinteractionM)
    self:GetQuestNpcActor(npcs.Npc20285Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest72107:OnSubFinish7210731(arg1)
    print("OnSubFinish7210731")
    self:GetQuestNpcActor(npcs.Npc20285Data.alias):DestroyWithDither(false, 2)
end

function Quest72107:OnSubFailed7210731(arg1)
    print("OnSubFailed7210731")
end

return Quest72107
