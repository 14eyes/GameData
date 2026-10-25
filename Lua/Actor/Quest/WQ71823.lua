require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71823 = class("Quest71823", QuestActorProxy)
Quest71823.defaultAlias = "Quest71823"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest71823:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest71823:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7182311"] = self.OnSubStart7182311,
        ["7182301"] = self.OnSubStart7182301,
        ["7182302"] = self.OnSubStart7182302,
        ["7182303"] = self.OnSubStart7182303,
        ["7182304"] = self.OnSubStart7182304,
        ["7182305"] = self.OnSubStart7182305,
        ["7182306"] = self.OnSubStart7182306,
        ["7182307"] = self.OnSubStart7182307,
        ["7182308"] = self.OnSubStart7182308,
        ["7182309"] = self.OnSubStart7182309,
        ["7182310"] = self.OnSubStart7182310
    }
end

function Quest71823:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7182311"] = self.OnSubFinish7182311,
        ["7182301"] = self.OnSubFinish7182301,
        ["7182302"] = self.OnSubFinish7182302,
        ["7182303"] = self.OnSubFinish7182303,
        ["7182304"] = self.OnSubFinish7182304,
        ["7182305"] = self.OnSubFinish7182305,
        ["7182306"] = self.OnSubFinish7182306,
        ["7182307"] = self.OnSubFinish7182307,
        ["7182308"] = self.OnSubFinish7182308,
        ["7182309"] = self.OnSubFinish7182309,
        ["7182310"] = self.OnSubFinish7182310
    }
end

function Quest71823:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7182311"] = self.OnSubFailed7182311,
        ["7182301"] = self.OnSubFailed7182301,
        ["7182302"] = self.OnSubFailed7182302,
        ["7182303"] = self.OnSubFailed7182303,
        ["7182304"] = self.OnSubFailed7182304,
        ["7182305"] = self.OnSubFailed7182305,
        ["7182306"] = self.OnSubFailed7182306,
        ["7182307"] = self.OnSubFailed7182307,
        ["7182308"] = self.OnSubFailed7182308,
        ["7182309"] = self.OnSubFailed7182309,
        ["7182310"] = self.OnSubFailed7182310
    }
end

function Quest71823:Start()
    print("Start")
end

function Quest71823:OnDestroy()
    print("OnDestroy")
end

function Quest71823:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71823:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71823:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc213901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2003044Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc213801Data.alias, 3)
    self:UnSpawn(gadgets.Gadget71700097Data.alias)
    self:UnSpawn(gadgets.Gadget70300118Data.alias)
    self:UnSpawn(gadgets.Gadget71700199Data.alias)
    self:NotifyTo("Npc2139", 0, true)
    self:NotifyTo("Npc2138", 0, true)
end

function Quest71823:HideAzhi()
    print("HideAzhi")
    self:NotifyTo("Npc2139", 1, true)
end

function Quest71823:ShowNpcs()
    print("ShowNpcs")
    self:SafeDestroyQuestNpc(npcs.Npc213901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc213801Data.alias, 3)
end

function Quest71823:CreateAzhi()
    print("CreateAzhi")
    self:CreateQuestNpcById(7182310, npcs.Npc213901Data.id, 0)
end

function Quest71823:OnSubStart7182311(arg1)
    print("OnSubStart7182311")
end

function Quest71823:OnSubFinish7182311(arg1)
    print("OnSubFinish7182311")
end

function Quest71823:OnSubFailed7182311(arg1)
    print("OnSubFailed7182311")
end

function Quest71823:OnSubStart7182301(arg1)
    print("OnSubStart7182301")
    self:CreateQuestNpc(arg1, npcs.Npc213901Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q7182301Trigger_.alias, datas.Q7182301Trigger_.script, datas.Q7182301Trigger_.id, 0, datas.Q7182301Trigger_.point.pos, datas.Q7182301Trigger_.point.rot, true, false, 3)
    self:HideAzhi()
end

function Quest71823:OnSubFinish7182301(arg1)
    print("OnSubFinish7182301")
end

function Quest71823:OnSubFailed7182301(arg1)
    print("OnSubFailed7182301")
end

function Quest71823:OnSubStart7182302(arg1)
    print("OnSubStart7182302")
    self:HideAzhi()
end

function Quest71823:OnSubFinish7182302(arg1)
    print("OnSubFinish7182302")
end

function Quest71823:OnSubFailed7182302(arg1)
    print("OnSubFailed7182302")
end

function Quest71823:OnSubStart7182303(arg1)
    print("OnSubStart7182303")
    self:UnSpawn(gadgets.Gadget71700097Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget71700097Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70300118Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70300118Data.id, 2, 0)
    self:HideAzhi()
end

function Quest71823:OnSubFinish7182303(arg1)
    print("OnSubFinish7182303")
    self:UnSpawn(gadgets.Gadget71700097Data.alias)
    self:UnSpawn(gadgets.Gadget70300118Data.alias)
    self:NarratorOnlyTask(datas.NarratorCaiyao1, nil, "Tag")
end

function Quest71823:OnSubFailed7182303(arg1)
    print("OnSubFailed7182303")
end

function Quest71823:OnSubStart7182304(arg1)
    print("OnSubStart7182304")
    actorMgr:CreateActorWithPos(datas.Q7182304Trigger_.alias, datas.Q7182304Trigger_.script, datas.Q7182304Trigger_.id, 0, datas.Q7182304Trigger_.point.pos, datas.Q7182304Trigger_.point.rot, true, false, 3)
    self:HideAzhi()
end

function Quest71823:OnSubFinish7182304(arg1)
    print("OnSubFinish7182304")
    self:NarratorOnlyTask(datas.NarratorCaiyao2Pre, nil, "Tag")
end

function Quest71823:OnSubFailed7182304(arg1)
    print("OnSubFailed7182304")
end

function Quest71823:OnSubStart7182305(arg1)
    print("OnSubStart7182305")
    self:HideAzhi()
end

function Quest71823:OnSubFinish7182305(arg1)
    print("OnSubFinish7182305")
    self:NarratorOnlyTask(datas.NarratorCaiyaoAfter, nil, "Tag")
end

function Quest71823:OnSubFailed7182305(arg1)
    print("OnSubFailed7182305")
end

function Quest71823:OnSubStart7182306(arg1)
    print("OnSubStart7182306")
    self:CreateQuestNpc(arg1, npcs.Npc2003044Data.id, 1)
    self:UnSpawn(gadgets.Gadget70300118Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70300118Data.id, 1, 1)
    self:UnSpawn(gadgets.Gadget71700199Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget71700199Data.id, 2, 1)
    self:HideAzhi()
end

function Quest71823:OnSubFinish7182306(arg1)
    print("OnSubFinish7182306")
    self:UnSpawn(gadgets.Gadget70300118Data.alias)
    self:UnSpawn(gadgets.Gadget71700199Data.alias)
end

function Quest71823:OnSubFailed7182306(arg1)
    print("OnSubFailed7182306")
end

function Quest71823:OnSubStart7182307(arg1)
    print("OnSubStart7182307")
    self:HideAzhi()
end

function Quest71823:OnSubFinish7182307(arg1)
    print("OnSubFinish7182307")
end

function Quest71823:OnSubFailed7182307(arg1)
    print("OnSubFailed7182307")
end

function Quest71823:OnSubStart7182308(arg1)
    print("OnSubStart7182308")
    self:HideAzhi()
end

function Quest71823:OnSubFinish7182308(arg1)
    print("OnSubFinish7182308")
    self:SafeDestroyQuestNpc(npcs.Npc2003044Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70300118Data.alias)
    self:UnSpawn(gadgets.Gadget71700199Data.alias)
end

function Quest71823:OnSubFailed7182308(arg1)
    print("OnSubFailed7182308")
end

function Quest71823:OnSubStart7182309(arg1)
    print("OnSubStart7182309")
    self:HideAzhi()
end

function Quest71823:OnSubFinish7182309(arg1)
    print("OnSubFinish7182309")
    self:ShowBlackScreen(0.5, 1.5, 0.5, nil, nil, nil, "")
end

function Quest71823:OnSubFailed7182309(arg1)
    print("OnSubFailed7182309")
end

function Quest71823:OnSubStart7182310(arg1)
    print("OnSubStart7182310")
    self:CreateQuestNpc(arg1, npcs.Npc213801Data.id, 2)
    self:HideAzhi()
    self:NotifyTo("Npc2138", 1, true)
    self:ActionSafeCall(self.CreateAzhi)
end

function Quest71823:OnSubFinish7182310(arg1)
    print("OnSubFinish7182310")
    self:NotifyTo("Npc2139", 0, true)
    self:NotifyTo("Npc2138", 0, true)
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.ShowNpcs, nil, nil, "")
end

function Quest71823:OnSubFailed7182310(arg1)
    print("OnSubFailed7182310")
end

return Quest71823
