require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74050 = class("Quest74050", QuestActorProxy)
Quest74050.defaultAlias = "Quest74050"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74050:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74050:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7405029"] = self.OnSubStart7405029,
        ["7405001"] = self.OnSubStart7405001,
        ["7405002"] = self.OnSubStart7405002,
        ["7405003"] = self.OnSubStart7405003,
        ["7405024"] = self.OnSubStart7405024,
        ["7405004"] = self.OnSubStart7405004,
        ["7405030"] = self.OnSubStart7405030,
        ["7405006"] = self.OnSubStart7405006,
        ["7405007"] = self.OnSubStart7405007,
        ["7405008"] = self.OnSubStart7405008,
        ["7405009"] = self.OnSubStart7405009,
        ["7405025"] = self.OnSubStart7405025,
        ["7405010"] = self.OnSubStart7405010,
        ["7405031"] = self.OnSubStart7405031,
        ["7405011"] = self.OnSubStart7405011,
        ["7405012"] = self.OnSubStart7405012,
        ["7405013"] = self.OnSubStart7405013,
        ["7405014"] = self.OnSubStart7405014,
        ["7405015"] = self.OnSubStart7405015,
        ["7405026"] = self.OnSubStart7405026,
        ["7405016"] = self.OnSubStart7405016,
        ["7405032"] = self.OnSubStart7405032,
        ["7405017"] = self.OnSubStart7405017,
        ["7405018"] = self.OnSubStart7405018,
        ["7405019"] = self.OnSubStart7405019,
        ["7405020"] = self.OnSubStart7405020,
        ["7405021"] = self.OnSubStart7405021,
        ["7405027"] = self.OnSubStart7405027,
        ["7405022"] = self.OnSubStart7405022,
        ["7405023"] = self.OnSubStart7405023,
        ["7405028"] = self.OnSubStart7405028,
        ["7405033"] = self.OnSubStart7405033,
        ["7405005"] = self.OnSubStart7405005
    }
end

function Quest74050:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7405029"] = self.OnSubFinish7405029,
        ["7405001"] = self.OnSubFinish7405001,
        ["7405002"] = self.OnSubFinish7405002,
        ["7405003"] = self.OnSubFinish7405003,
        ["7405024"] = self.OnSubFinish7405024,
        ["7405004"] = self.OnSubFinish7405004,
        ["7405030"] = self.OnSubFinish7405030,
        ["7405006"] = self.OnSubFinish7405006,
        ["7405007"] = self.OnSubFinish7405007,
        ["7405008"] = self.OnSubFinish7405008,
        ["7405009"] = self.OnSubFinish7405009,
        ["7405025"] = self.OnSubFinish7405025,
        ["7405010"] = self.OnSubFinish7405010,
        ["7405031"] = self.OnSubFinish7405031,
        ["7405011"] = self.OnSubFinish7405011,
        ["7405012"] = self.OnSubFinish7405012,
        ["7405013"] = self.OnSubFinish7405013,
        ["7405014"] = self.OnSubFinish7405014,
        ["7405015"] = self.OnSubFinish7405015,
        ["7405026"] = self.OnSubFinish7405026,
        ["7405016"] = self.OnSubFinish7405016,
        ["7405032"] = self.OnSubFinish7405032,
        ["7405017"] = self.OnSubFinish7405017,
        ["7405018"] = self.OnSubFinish7405018,
        ["7405019"] = self.OnSubFinish7405019,
        ["7405020"] = self.OnSubFinish7405020,
        ["7405021"] = self.OnSubFinish7405021,
        ["7405027"] = self.OnSubFinish7405027,
        ["7405022"] = self.OnSubFinish7405022,
        ["7405023"] = self.OnSubFinish7405023,
        ["7405028"] = self.OnSubFinish7405028,
        ["7405033"] = self.OnSubFinish7405033,
        ["7405005"] = self.OnSubFinish7405005
    }
end

function Quest74050:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74050:Start()
    print("Start")
end

function Quest74050:OnDestroy()
    print("OnDestroy")
end

function Quest74050:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74050:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74050:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74050:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7405002 then
        self:SetupQuestLikingBar(74050, 21081, 10, false, "QUEST_Message_Q7405001", "BillboardAttach", -0.6, -0.15, 0)
        self:ShowQuestLikingBar(74050, 21081, 10, false, "QUEST_Message_Q7405001")
    elseif arg1 == 740500300 then
        self:SetupQuestLikingBar(74050, 21081, 25, false, "QUEST_Message_Q7405002", "BillboardAttach", -0.6, -0.15, 0)
        self:UpdateQuestLikingBar(25, false, "QUEST_Message_Q7405002")
    elseif arg1 == 740500399 then
        self:HideQuestLikingBar()
    elseif arg1 == 740501800 then
        self:SetupQuestLikingBar(74050, 21081, 25, false, "QUEST_Message_Q7405001", "BillboardAttach", -0.6, -0.15, 0)
        self:ShowQuestLikingBar(74050, 21081, 25, false, "QUEST_Message_Q7405001")
    elseif arg1 == 740501899 then
        self:HideQuestLikingBar()
    elseif arg1 == 740500700 then
        self:SetupQuestLikingBar(74050, 21081, 50, false, "QUEST_Message_Q7405002", "BillboardAttach", -0.6, -0.15, 0)
        self:UpdateQuestLikingBar(50, false, "QUEST_Message_Q7405002")
    elseif arg1 == 740500799 then
        self:HideQuestLikingBar()
    elseif arg1 == 740501900 then
        self:SetupQuestLikingBar(74050, 21081, 50, false, "QUEST_Message_Q7405001", "BillboardAttach", -0.6, -0.15, 0)
        self:ShowQuestLikingBar(74050, 21081, 50, false, "QUEST_Message_Q7405001")
    elseif arg1 == 740501999 then
        self:HideQuestLikingBar()
    elseif arg1 == 740501100 then
        self:SetupQuestLikingBar(74050, 21081, 75, false, "QUEST_Message_Q7405002", "BillboardAttach", -0.6, -0.15, 0)
        self:UpdateQuestLikingBar(75, false, "QUEST_Message_Q7405002")
    elseif arg1 == 740501199 then
        self:HideQuestLikingBar()
    elseif arg1 == 740502000 then
        self:SetupQuestLikingBar(74050, 21081, 75, false, "QUEST_Message_Q7405001", "BillboardAttach", -0.6, -0.15, 0)
        self:ShowQuestLikingBar(74050, 21081, 75, false, "QUEST_Message_Q7405001")
    elseif arg1 == 740502099 then
        self:HideQuestLikingBar()
    elseif arg1 == 740501500 then
        self:SetupQuestLikingBar(74050, 21081, 100, false, "QUEST_Message_Q7405002", "BillboardAttach", -0.6, -0.15, 0)
        self:UpdateQuestLikingBar(100, false, "QUEST_Message_Q7405002")
    elseif arg1 == 740501599 then
        self:HideQuestLikingBar()
    elseif arg1 == 740502100 then
        self:SetupQuestLikingBar(74050, 21081, 100, false, "QUEST_Message_Q7405001", "BillboardAttach", -0.6, -0.15, 0)
        self:ShowQuestLikingBar(74050, 21081, 100, false, "QUEST_Message_Q7405001")
    elseif arg1 == 740502199 then
        self:HideQuestLikingBar()
    elseif arg1 == 7405033 then
        quest = actorMgr:GetActor(clientData.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 7405033)
        end
    end
end

function Quest74050:OnSubStart7405029(arg1)
    print("OnSubStart7405029")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21081Data.alias):DoFreeStyle(4, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc20974Data.id, 0)
    actorMgr:CreateActorWithPos("Q74050Trigger", "Actor/Gadget/Q74050Trigger", 70900002, 0, {x = 3213.526, y = 414.085, z = 4888.488}, {x = 0.0, y = 53.791, z = 0.0}, true, false)
end

function Quest74050:OnSubFinish7405029(arg1)
    print("OnSubFinish7405029")
end

function Quest74050:OnSubStart7405001(arg1)
    print("OnSubStart7405001")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21081Data.alias):DoFreeStyle(4, true, nil, true, true, false, false)
end

function Quest74050:OnSubFinish7405001(arg1)
    print("OnSubFinish7405001")
end

function Quest74050:OnSubStart7405002(arg1)
    print("OnSubStart7405002")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21081Data.alias):DoFreeStyle(4, true, nil, true, true, false, false)
end

function Quest74050:OnSubFinish7405002(arg1)
    print("OnSubFinish7405002")
    this:RequestInteraction(npcs.Npc21081Data.alias)
end

function Quest74050:OnSubStart7405003(arg1)
    print("OnSubStart7405003")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21081Data.alias):DoFreeStyle(4, true, nil, true, true, false, false)
    this:HideQuestLikingBar()
end

function Quest74050:OnSubFinish7405003(arg1)
    print("OnSubFinish7405003")
    this:GetQuestNpcActor(npcs.Npc21081Data.alias):DoFreeStateTrigger()
end

function Quest74050:OnSubStart7405024(arg1)
    print("OnSubStart7405024")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    actorUtils.FinishQuestID(false, 7405024)
end

function Quest74050:OnSubFinish7405024(arg1)
    print("OnSubFinish7405024")
end

function Quest74050:OnSubStart7405004(arg1)
    print("OnSubStart7405004")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    this:HideQuestLikingBar()
end

function Quest74050:OnSubFinish7405004(arg1)
    print("OnSubFinish7405004")
end

function Quest74050:OnSubStart7405030(arg1)
    print("OnSubStart7405030")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
end

function Quest74050:OnSubFinish7405030(arg1)
    print("OnSubFinish7405030")
    this:RequestInteraction(npcs.Npc21081Data.alias)
end

function Quest74050:OnSubStart7405006(arg1)
    print("OnSubStart7405006")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    this:HideQuestLikingBar()
end

function Quest74050:OnSubFinish7405006(arg1)
    print("OnSubFinish7405006")
end

function Quest74050:OnSubStart7405007(arg1)
    print("OnSubStart7405007")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
end

function Quest74050:OnSubFinish7405007(arg1)
    print("OnSubFinish7405007")
end

function Quest74050:OnSubStart7405008(arg1)
    print("OnSubStart7405008")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
end

function Quest74050:OnSubFinish7405008(arg1)
    print("OnSubFinish7405008")
    this:RequestInteraction(npcs.Npc21081Data.alias)
end

function Quest74050:OnSubStart7405009(arg1)
    print("OnSubStart7405009")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    this:HideQuestLikingBar()
end

function Quest74050:OnSubFinish7405009(arg1)
    print("OnSubFinish7405009")
end

function Quest74050:OnSubStart7405025(arg1)
    print("OnSubStart7405025")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    actorUtils.FinishQuestID(false, 7405025)
end

function Quest74050:OnSubFinish7405025(arg1)
    print("OnSubFinish7405025")
end

function Quest74050:OnSubStart7405010(arg1)
    print("OnSubStart7405010")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    this:HideQuestLikingBar()
end

function Quest74050:OnSubFinish7405010(arg1)
    print("OnSubFinish7405010")
end

function Quest74050:OnSubStart7405031(arg1)
    print("OnSubStart7405031")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
end

function Quest74050:OnSubFinish7405031(arg1)
    print("OnSubFinish7405031")
end

function Quest74050:OnSubStart7405011(arg1)
    print("OnSubStart7405011")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
end

function Quest74050:OnSubFinish7405011(arg1)
    print("OnSubFinish7405011")
    this:RequestInteraction(npcs.Npc21081Data.alias)
end

function Quest74050:OnSubStart7405012(arg1)
    print("OnSubStart7405012")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    this:HideQuestLikingBar()
end

function Quest74050:OnSubFinish7405012(arg1)
    print("OnSubFinish7405012")
end

function Quest74050:OnSubStart7405013(arg1)
    print("OnSubStart7405013")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
end

function Quest74050:OnSubFinish7405013(arg1)
    print("OnSubFinish7405013")
end

function Quest74050:OnSubStart7405014(arg1)
    print("OnSubStart7405014")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
end

function Quest74050:OnSubFinish7405014(arg1)
    print("OnSubFinish7405014")
    this:RequestInteraction(npcs.Npc21081Data.alias)
end

function Quest74050:OnSubStart7405015(arg1)
    print("OnSubStart7405015")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    this:HideQuestLikingBar()
end

function Quest74050:OnSubFinish7405015(arg1)
    print("OnSubFinish7405015")
end

function Quest74050:OnSubStart7405026(arg1)
    print("OnSubStart7405026")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    actorUtils.FinishQuestID(false, 7405026)
end

function Quest74050:OnSubFinish7405026(arg1)
    print("OnSubFinish7405026")
end

function Quest74050:OnSubStart7405016(arg1)
    print("OnSubStart7405016")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    this:HideQuestLikingBar()
end

function Quest74050:OnSubFinish7405016(arg1)
    print("OnSubFinish7405016")
end

function Quest74050:OnSubStart7405032(arg1)
    print("OnSubStart7405032")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    actorMgr:CreateActorWithPos("Q74050Trigger1", "Actor/Gadget/Q74050Trigger1", 70900002, 0, {x = 3209.362, y = 414.154, z = 4895.184}, {x = 0.0, y = 57.185, z = 0.0}, true, false)
end

function Quest74050:OnSubFinish7405032(arg1)
    print("OnSubFinish7405032")
end

function Quest74050:OnSubStart7405017(arg1)
    print("OnSubStart7405017")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
end

function Quest74050:OnSubFinish7405017(arg1)
    print("OnSubFinish7405017")
    this:RequestInteraction(npcs.Npc21081Data.alias)
end

function Quest74050:OnSubStart7405018(arg1)
    print("OnSubStart7405018")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    this:HideQuestLikingBar()
end

function Quest74050:OnSubFinish7405018(arg1)
    print("OnSubFinish7405018")
end

function Quest74050:OnSubStart7405019(arg1)
    print("OnSubStart7405019")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
end

function Quest74050:OnSubFinish7405019(arg1)
    print("OnSubFinish7405019")
end

function Quest74050:OnSubStart7405020(arg1)
    print("OnSubStart7405020")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
end

function Quest74050:OnSubFinish7405020(arg1)
    print("OnSubFinish7405020")
    this:RequestInteraction(npcs.Npc21081Data.alias)
end

function Quest74050:OnSubStart7405021(arg1)
    print("OnSubStart7405021")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    this:HideQuestLikingBar()
end

function Quest74050:OnSubFinish7405021(arg1)
    print("OnSubFinish7405021")
end

function Quest74050:OnSubStart7405027(arg1)
    print("OnSubStart7405027")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    actorUtils.FinishQuestID(false, 7405027)
end

function Quest74050:OnSubFinish7405027(arg1)
    print("OnSubFinish7405027")
end

function Quest74050:OnSubStart7405022(arg1)
    print("OnSubStart7405022")
    this:CreateQuestNpc(arg1, npcs.Npc21081Data.id, 0)
    this:HideQuestLikingBar()
end

function Quest74050:OnSubFinish7405022(arg1)
    print("OnSubFinish7405022")
    this:SafeDestroyQuestNpc(npcs.Npc21081Data.alias, 3)
end

function Quest74050:OnSubStart7405023(arg1)
    print("OnSubStart7405023")
    this:CreateQuestNpc(arg1, npcs.Npc21082Data.id, 0)
end

function Quest74050:OnSubFinish7405023(arg1)
    print("OnSubFinish7405023")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
        this:TransmitPlayerById(arg1, 1)
        this:RequestInteraction(npcs.Npc21082Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74050:OnSubStart7405028(arg1)
    print("OnSubStart7405028")
    this:CreateQuestNpc(arg1, npcs.Npc21082Data.id, 0)
end

function Quest74050:OnSubFinish7405028(arg1)
    print("OnSubFinish7405028")
    this:SafeDestroyQuestNpc(npcs.Npc21082Data.alias, 3)
end

function Quest74050:OnSubStart7405033(arg1)
    print("OnSubStart7405033")
end

function Quest74050:OnSubFinish7405033(arg1)
    print("OnSubFinish7405033")
end

function Quest74050:OnSubStart7405005(arg1)
    print("OnSubStart7405005")
end

function Quest74050:OnSubFinish7405005(arg1)
    print("OnSubFinish7405005")
end

return Quest74050
