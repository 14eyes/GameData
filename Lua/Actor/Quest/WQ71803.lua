require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71803 = class("Quest71803", QuestActorProxy)
Quest71803.defaultAlias = "Quest71803"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71803:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71803:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7180301"] = self.OnSubStart7180301,
        ["7180302"] = self.OnSubStart7180302,
        ["7180303"] = self.OnSubStart7180303,
        ["7180304"] = self.OnSubStart7180304,
        ["7180305"] = self.OnSubStart7180305,
        ["7180306"] = self.OnSubStart7180306
    }
end

function Quest71803:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7180301"] = self.OnSubFinish7180301,
        ["7180302"] = self.OnSubFinish7180302,
        ["7180303"] = self.OnSubFinish7180303,
        ["7180304"] = self.OnSubFinish7180304,
        ["7180305"] = self.OnSubFinish7180305,
        ["7180306"] = self.OnSubFinish7180306
    }
end

function Quest71803:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71803:Start()
    print("Start")
end

function Quest71803:OnDestroy()
    print("OnDestroy")
end

function Quest71803:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 1, 0.2, self.DestroyAllNPC, nil, nil, "")
    self:NotifyTo(npcs.Npc2016Data.alias, 0, true)
end

function Quest71803:OnMainFailed(arg1)
    print("OnMainFailed")
    self:NotifyTo(npcs.Npc2016Data.alias, 0, true)
    self:DestroyQuestNpcActor(npcs.Npc20180Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2016Data.alias, 3)
    self:GetQuestVar(7180305, 1)
    self:SetQuestVar(7180305, 1, 0)
end

function Quest71803:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc2016Data.alias, 0, true)
    self:DestroyQuestNpcActor(npcs.Npc2016Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc20180Data.alias, 3)
end

function Quest71803:DestroyWomanNPC()
    print("DestroyWomanNPC")
    self:DestroyQuestNpcActor(npcs.Npc2016Data.alias, 3)
end

function Quest71803:DestroyCatNPC()
    print("DestroyCatNPC")
    self:DestroyQuestNpcActor(npcs.Npc20180Data.alias, 3)
end

function Quest71803:DestroyAllNPC()
    print("DestroyAllNPC")
    self:DestroyQuestNpcActor(npcs.Npc2016Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc20180Data.alias, 3)
end

function Quest71803:CreateCatNPC7180304()
    print("CreateCatNPC7180304")
    self:CreateQuestNpcById(7180304, npcs.Npc20180Data.id, 2)
end

function Quest71803:CreateAllNPC7180306()
    print("CreateAllNPC7180306")
    self:CreateQuestNpcById(7180306, npcs.Npc20180Data.id, 0)
    self:CreateQuestNpcById(7180306, npcs.Npc2016Data.id, 0)
end

function Quest71803:OnSubStart7180301(arg1)
    print("OnSubStart7180301")
    self:NotifyTo(npcs.Npc2016Data.alias, 2, true)
end

function Quest71803:OnSubFinish7180301(arg1)
    print("OnSubFinish7180301")
end

function Quest71803:OnSubStart7180302(arg1)
    print("OnSubStart7180302")
    self:NotifyTo(npcs.Npc2016Data.alias, 2, true)
end

function Quest71803:OnSubFinish7180302(arg1)
    print("OnSubFinish7180302")
    self:ShowBlackScreen(0.2, 1, 0.2, self.CreateCatNPC7180304, nil, nil, "")
    self:TransmitPlayerByQuestId(7180302, 1)
end

function Quest71803:OnSubStart7180303(arg1)
    print("OnSubStart7180303")
    self:NotifyTo(npcs.Npc2016Data.alias, 2, true)
end

function Quest71803:OnSubFinish7180303(arg1)
    print("OnSubFinish7180303")
end

function Quest71803:OnSubStart7180304(arg1)
    print("OnSubStart7180304")
    self:NotifyTo(npcs.Npc2016Data.alias, 2, true)
    self:CreateQuestNpcById(7180304, npcs.Npc2016Data.id, 1)
end

function Quest71803:OnSubFinish7180304(arg1)
    self:ShowBlackScreen(0.2, 1, 0.2, self.DestroyCatNPC, nil, nil, "")
    print("OnSubFinish7180304")
end

function Quest71803:OnSubStart7180305(arg1)
    print("OnSubStart7180305")
    self:NotifyTo(npcs.Npc2016Data.alias, 2, true)
    self:CreateQuestNpc(arg1, npcs.Npc2016Data.id, 0)
    self:GetQuestVar(7180305, 1)
    self:SetQuestVar(7180305, 1, 0)
end

function Quest71803:OnSubFinish7180305(arg1)
    print("OnSubFinish7180305")
    self:GetQuestVar(7180305, 1)
    self:SetQuestVar(7180305, 1, 1)
end

function Quest71803:OnSubStart7180306(arg1)
    print("OnSubStart7180306")
    self:NotifyTo(npcs.Npc2016Data.alias, 2, true)
    self:ShowBlackScreen(0.2, 1, 0.2, self.CreateAllNPC7180306, nil, nil, "")
    self:TransmitPlayerByQuestId(7180306, 2)
end

function Quest71803:OnSubFinish7180306(arg1)
    print("OnSubFinish7180306")
end

return Quest71803
