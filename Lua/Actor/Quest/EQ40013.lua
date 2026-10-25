require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40013 = class("Quest40013", QuestActorProxy)
Quest40013.defaultAlias = "Quest40013"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40013:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4001308"] = self.OnSubStart4001308,
        ["4001312"] = self.OnSubStart4001312,
        ["4001310"] = self.OnSubStart4001310,
        ["4001301"] = self.OnSubStart4001301,
        ["4001302"] = self.OnSubStart4001302,
        ["4001303"] = self.OnSubStart4001303,
        ["4001304"] = self.OnSubStart4001304,
        ["4001305"] = self.OnSubStart4001305,
        ["4001311"] = self.OnSubStart4001311,
        ["4001306"] = self.OnSubStart4001306,
        ["4001307"] = self.OnSubStart4001307,
        ["4001313"] = self.OnSubStart4001313,
        ["4001309"] = self.OnSubStart4001309
    }
end

function Quest40013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4001308"] = self.OnSubFinish4001308,
        ["4001312"] = self.OnSubFinish4001312,
        ["4001310"] = self.OnSubFinish4001310,
        ["4001301"] = self.OnSubFinish4001301,
        ["4001302"] = self.OnSubFinish4001302,
        ["4001303"] = self.OnSubFinish4001303,
        ["4001304"] = self.OnSubFinish4001304,
        ["4001305"] = self.OnSubFinish4001305,
        ["4001311"] = self.OnSubFinish4001311,
        ["4001306"] = self.OnSubFinish4001306,
        ["4001307"] = self.OnSubFinish4001307,
        ["4001313"] = self.OnSubFinish4001313,
        ["4001309"] = self.OnSubFinish4001309
    }
end

function Quest40013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4001308"] = self.OnSubFailed4001308,
        ["4001312"] = self.OnSubFailed4001312,
        ["4001310"] = self.OnSubFailed4001310,
        ["4001301"] = self.OnSubFailed4001301,
        ["4001302"] = self.OnSubFailed4001302,
        ["4001303"] = self.OnSubFailed4001303,
        ["4001304"] = self.OnSubFailed4001304,
        ["4001305"] = self.OnSubFailed4001305,
        ["4001311"] = self.OnSubFailed4001311,
        ["4001306"] = self.OnSubFailed4001306,
        ["4001307"] = self.OnSubFailed4001307,
        ["4001313"] = self.OnSubFailed4001313,
        ["4001309"] = self.OnSubFailed4001309
    }
end

function Quest40013:Start()
    print("Start")
end

function Quest40013:OnDestroy()
    print("OnDestroy")
end

function Quest40013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40013:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 4)
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 4)
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 4)
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 4)
    self:SafeDestroyQuestNpc(npcs.DilucData.alias, 4)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 4)
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 4)
    self:ActorDestroy("Q40013CampSealGearTrigger")
end

function Quest40013:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40013:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:FinishQuestID(false, 4001313)
    elseif arg1 == 2 then
        globalActor:ChangeDay24Time(7, true)
    end
end

function Quest40013:OnSubStart4001301(arg1)
    print("OnSubStart4001301")
end

function Quest40013:OnSubFinish4001301(arg1)
    print("OnSubFinish4001301")
end

function Quest40013:OnSubFailed4001301(arg1)
    print("OnSubFailed4001301")
end

function Quest40013:OnSubStart4001302(arg1)
    print("OnSubStart4001302")
end

function Quest40013:OnSubFinish4001302(arg1)
    print("OnSubFinish4001302")
end

function Quest40013:OnSubFailed4001302(arg1)
    print("OnSubFailed4001302")
end

function Quest40013:OnSubStart4001303(arg1)
    print("OnSubStart4001303")
end

function Quest40013:OnSubFinish4001303(arg1)
    print("OnSubFinish4001303")
end

function Quest40013:OnSubFailed4001303(arg1)
    print("OnSubFailed4001303")
end

function Quest40013:OnSubStart4001304(arg1)
    print("OnSubStart4001304")
end

function Quest40013:OnSubFinish4001304(arg1)
    print("OnSubFinish4001304")
end

function Quest40013:OnSubFailed4001304(arg1)
    print("OnSubFailed4001304")
end

function Quest40013:OnSubStart4001305(arg1)
    print("OnSubStart4001305")
end

function Quest40013:OnSubFinish4001305(arg1)
    print("OnSubFinish4001305")
end

function Quest40013:OnSubFailed4001305(arg1)
    print("OnSubFailed4001305")
end

function Quest40013:OnSubStart4001306(arg1)
    print("OnSubStart4001306")
end

function Quest40013:OnSubFinish4001306(arg1)
    print("OnSubFinish4001306")
end

function Quest40013:OnSubFailed4001306(arg1)
    print("OnSubFailed4001306")
end

function Quest40013:OnSubStart4001307(arg1)
    print("OnSubStart4001307")
    self:RequestInteraction(npcs.Npc10090Data.alias)
end

function Quest40013:OnSubFinish4001307(arg1)
    print("OnSubFinish4001307")
end

function Quest40013:OnSubFailed4001307(arg1)
    print("OnSubFailed4001307")
end

function Quest40013:OnSubStart4001308(arg1)
    print("OnSubStart4001308")
end

function Quest40013:OnSubFinish4001308(arg1)
    print("OnSubFinish4001308")
end

function Quest40013:OnSubFailed4001308(arg1)
    print("OnSubFailed4001308")
end

function Quest40013:OnSubStart4001309(arg1)
    print("OnSubStart4001309")
    self:RequestInteraction(npcs.Npc10090Data.alias)
end

function Quest40013:OnSubFinish4001309(arg1)
    print("OnSubFinish4001309")
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(816, function(arg1)
            actorUtils.ShowSummerTimeStagePage(4)
        end)
    end)
end

function Quest40013:OnSubFailed4001309(arg1)
    print("OnSubFailed4001309")
end

function Quest40013:OnSubStart4001310(arg1)
    print("OnSubStart4001310")
    self:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.BarbaraData.id, 2)
    self:CreateQuestNpc(arg1, npcs.QinData.id, 3)
end

function Quest40013:OnSubFinish4001310(arg1)
    print("OnSubFinish4001310")
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 4)
end

function Quest40013:OnSubFailed4001310(arg1)
    print("OnSubFailed4001310")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 4)
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 4)
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 4)
end

function Quest40013:OnSubStart4001311(arg1)
    print("OnSubStart4001311")
    actorMgr:CreateActorWithPos("Q40013CampSealGearTrigger", "Actor/Gadget/Q40013CampSealGearTrigger", 70900002, 0, sceneData:GetDummyPoint(4, "Q40012CampSealGear").pos, sceneData:GetDummyPoint(4, "Q40012CampSealGear").rot, true, false, 4)
end

function Quest40013:OnSubFinish4001311(arg1)
    print("OnSubFinish4001311")
end

function Quest40013:OnSubFailed4001311(arg1)
    print("OnSubFailed4001311")
end

function Quest40013:OnSubStart4001312(arg1)
    print("OnSubStart4001312")
end

function Quest40013:OnSubFinish4001312(arg1)
    print("OnSubFinish4001312")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId1)
    end)
end

function Quest40013:OnSubFailed4001312(arg1)
    print("OnSubFailed4001312")
end

function Quest40013:OnSubStart4001313(arg1)
    print("OnSubStart4001313")
end

function Quest40013:OnSubFinish4001313(arg1)
    print("OnSubFinish4001313")
end

function Quest40013:OnSubFailed4001313(arg1)
    print("OnSubFailed4001313")
end

return Quest40013
