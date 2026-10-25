require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2005 = class("Quest2005", QuestActorProxy)
Quest2005.defaultAlias = "Quest2005"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest2005:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest2005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["200501"] = self.OnSubStart200501,
        ["200506"] = self.OnSubStart200506,
        ["200507"] = self.OnSubStart200507,
        ["200502"] = self.OnSubStart200502,
        ["200503"] = self.OnSubStart200503,
        ["200504"] = self.OnSubStart200504,
        ["200505"] = self.OnSubStart200505
    }
end

function Quest2005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["200501"] = self.OnSubFinish200501,
        ["200506"] = self.OnSubFinish200506,
        ["200507"] = self.OnSubFinish200507,
        ["200502"] = self.OnSubFinish200502,
        ["200503"] = self.OnSubFinish200503,
        ["200504"] = self.OnSubFinish200504,
        ["200505"] = self.OnSubFinish200505
    }
end

function Quest2005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["200501"] = self.OnSubFailed200501,
        ["200506"] = self.OnSubFailed200506,
        ["200507"] = self.OnSubFailed200507,
        ["200502"] = self.OnSubFailed200502,
        ["200503"] = self.OnSubFailed200503,
        ["200504"] = self.OnSubFailed200504,
        ["200505"] = self.OnSubFailed200505
    }
end

function Quest2005:Start()
    print("Start")
end

function Quest2005:OnDestroy()
    print("OnDestroy")
end

function Quest2005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2005:OnSubStart200501(arg1)
    print("OnSubStart200501")
    self:CreateQuestNpc(arg1, npcs.Npc12002Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12000Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12003Data.id, 3)
    actorMgr:CreateActorWithPos(datas.Q200501Trigger_.alias, datas.Q200501Trigger_.script, datas.Q200501Trigger_.id, 0, datas.Q200501Trigger_.point.pos, datas.Q200501Trigger_.point.rot, true, false, 3)
    self:NotifyTo(npcs.Npc3047Data.alias, 1, true)
end

function Quest2005:OnSubFinish200501(arg1)
    print("OnSubFinish200501")
end

function Quest2005:OnSubFailed200501(arg1)
    print("OnSubFailed200501")
end

function Quest2005:OnSubStart200506(arg1)
    print("OnSubStart200506")
    self:NotifyTo(npcs.Npc3047Data.alias, 1, true)
end

function Quest2005:OnSubFinish200506(arg1)
    print("OnSubFinish200506")
    self:LightNotifyTo("Npc3047", 0, true)
end

function Quest2005:OnSubFailed200506(arg1)
    print("OnSubFailed200506")
end

function Quest2005:OnSubStart200507(arg1)
    print("OnSubStart200507")
    self:CreateQuestNpc(arg1, npcs.Npc12022Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12002Data1.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12023Data.id, 5)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710234Data.id, 1, 0)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710234Data1.id, 2, 0)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710234Data2.id, 3, 0)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710234Data3.id, 4, 0)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710234Data4.id, 5, 0)
    actorMgr:CreateActorWithPos(datas.Q200507Trigger_.alias, datas.Q200507Trigger_.script, datas.Q200507Trigger_.id, 0, datas.Q200507Trigger_.point.pos, datas.Q200507Trigger_.point.rot, true, false, 3)
end

function Quest2005:OnSubFinish200507(arg1)
    print("OnSubFinish200507")
    self:SafeDestroyQuestNpc(npcs.Npc12002Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12000Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12003Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12022Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12002Data1.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12023Data.alias, 3)
end

function Quest2005:OnSubFailed200507(arg1)
    print("OnSubFailed200507")
end

function Quest2005:OnSubStart200502(arg1)
    print("OnSubStart200502")
    self:UnSpawn(gadgets.Gadget70710234Data.alias)
    self:UnSpawn(gadgets.Gadget70710234Data1.alias)
    self:UnSpawn(gadgets.Gadget70710234Data2.alias)
    self:UnSpawn(gadgets.Gadget70710234Data3.alias)
    self:UnSpawn(gadgets.Gadget70710234Data4.alias)
end

function Quest2005:OnSubFinish200502(arg1)
    print("OnSubFinish200502")
    self:UnSpawn(gadgets.Gadget70710234Data.alias)
    self:UnSpawn(gadgets.Gadget70710234Data1.alias)
    self:UnSpawn(gadgets.Gadget70710234Data2.alias)
    self:UnSpawn(gadgets.Gadget70710234Data3.alias)
    self:UnSpawn(gadgets.Gadget70710234Data4.alias)
end

function Quest2005:OnSubFailed200502(arg1)
    print("OnSubFailed200502")
end

function Quest2005:OnSubStart200503(arg1)
    print("OnSubStart200503")
    self:CreateQuestNpc(arg1, npcs.Npc12022Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 2)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest2005:OnSubFinish200503(arg1)
    print("OnSubFinish200503")
    self:SafeDestroyQuestNpc(npcs.Npc12022Data.alias, 3)
end

function Quest2005:OnSubFailed200503(arg1)
    print("OnSubFailed200503")
end

function Quest2005:OnSubStart200504(arg1)
    print("OnSubStart200504")
    self:CreateQuestNpc(arg1, npcs.Npc300201Data.id, 1)
end

function Quest2005:OnSubFinish200504(arg1)
    print("OnSubFinish200504")
    self:SafeDestroyQuestNpc(npcs.Npc300201Data.alias, 3)
end

function Quest2005:OnSubFailed200504(arg1)
    print("OnSubFailed200504")
end

function Quest2005:OnSubStart200505(arg1)
    print("OnSubStart200505")
    self:CreateQuestNpc(arg1, npcs.Npc12002Data.id, 1)
end

function Quest2005:OnSubFinish200505(arg1)
    print("OnSubFinish200505")
    self:SafeDestroyQuestNpc(npcs.Npc12002Data.alias, 3)
end

function Quest2005:OnSubFailed200505(arg1)
    print("OnSubFailed200505")
end

return Quest2005
