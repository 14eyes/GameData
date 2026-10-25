require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73053 = class("Quest73053", QuestActorProxy)
Quest73053.defaultAlias = "Quest73053"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73053:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73053:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7305301"] = self.OnSubStart7305301,
        ["7305302"] = self.OnSubStart7305302,
        ["7305303"] = self.OnSubStart7305303,
        ["7305308"] = self.OnSubStart7305308,
        ["7305322"] = self.OnSubStart7305322,
        ["7305310"] = self.OnSubStart7305310,
        ["7305311"] = self.OnSubStart7305311,
        ["7305324"] = self.OnSubStart7305324,
        ["7305312"] = self.OnSubStart7305312,
        ["7305325"] = self.OnSubStart7305325,
        ["7305328"] = self.OnSubStart7305328,
        ["7305318"] = self.OnSubStart7305318,
        ["7305319"] = self.OnSubStart7305319,
        ["7305313"] = self.OnSubStart7305313,
        ["7305320"] = self.OnSubStart7305320,
        ["7305314"] = self.OnSubStart7305314,
        ["7305315"] = self.OnSubStart7305315,
        ["7305316"] = self.OnSubStart7305316,
        ["7305321"] = self.OnSubStart7305321,
        ["7305317"] = self.OnSubStart7305317,
        ["7305329"] = self.OnSubStart7305329,
        ["7305326"] = self.OnSubStart7305326,
        ["7305327"] = self.OnSubStart7305327,
        ["7305323"] = self.OnSubStart7305323,
        ["7305309"] = self.OnSubStart7305309,
        ["7305307"] = self.OnSubStart7305307,
        ["7305306"] = self.OnSubStart7305306,
        ["7305305"] = self.OnSubStart7305305,
        ["7305304"] = self.OnSubStart7305304
    }
end

function Quest73053:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7305301"] = self.OnSubFinish7305301,
        ["7305302"] = self.OnSubFinish7305302,
        ["7305303"] = self.OnSubFinish7305303,
        ["7305308"] = self.OnSubFinish7305308,
        ["7305322"] = self.OnSubFinish7305322,
        ["7305310"] = self.OnSubFinish7305310,
        ["7305311"] = self.OnSubFinish7305311,
        ["7305324"] = self.OnSubFinish7305324,
        ["7305312"] = self.OnSubFinish7305312,
        ["7305325"] = self.OnSubFinish7305325,
        ["7305328"] = self.OnSubFinish7305328,
        ["7305318"] = self.OnSubFinish7305318,
        ["7305319"] = self.OnSubFinish7305319,
        ["7305313"] = self.OnSubFinish7305313,
        ["7305320"] = self.OnSubFinish7305320,
        ["7305314"] = self.OnSubFinish7305314,
        ["7305315"] = self.OnSubFinish7305315,
        ["7305316"] = self.OnSubFinish7305316,
        ["7305321"] = self.OnSubFinish7305321,
        ["7305317"] = self.OnSubFinish7305317,
        ["7305329"] = self.OnSubFinish7305329,
        ["7305326"] = self.OnSubFinish7305326,
        ["7305327"] = self.OnSubFinish7305327,
        ["7305323"] = self.OnSubFinish7305323,
        ["7305309"] = self.OnSubFinish7305309,
        ["7305307"] = self.OnSubFinish7305307,
        ["7305306"] = self.OnSubFinish7305306,
        ["7305305"] = self.OnSubFinish7305305,
        ["7305304"] = self.OnSubFinish7305304
    }
end

function Quest73053:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73053:Start()
    print("Start")
end

function Quest73053:OnDestroy()
    print("OnDestroy")
end

function Quest73053:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73053:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73053:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73053:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73053:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73053:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("Finish7305324")
        self:FinishQuestID(false, 7305324)
    elseif arg1 == 2 then
        print("Finish7305328")
        self:FinishQuestID(false, 7305328)
    elseif arg1 == 3 then
        print("Finish7305317")
        self:FinishQuestID(false, 7305317)
    elseif arg1 == 4 then
        print("Finish7305323")
        self:FinishQuestID(false, 7305323)
    end
end

function Quest73053:OnSubStart7305301(arg1)
    print("OnSubStart7305301")
    actorMgr:CreateActorWithPos("Q73053Trigger", "Actor/Gadget/Q73053Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305301_guide").pos, sceneData:GetDummyPoint(3, "Q7305301_guide").rot, true, false, 3)
end

function Quest73053:OnSubFinish7305301(arg1)
    print("OnSubFinish7305301")
end

function Quest73053:OnSubStart7305302(arg1)
    print("OnSubStart7305302")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20722Data.id, 1, npcs.Npc20722Data.alias)
end

function Quest73053:OnSubFinish7305302(arg1)
    print("OnSubFinish7305302")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7305302, nil, "")
    end)
end

function Quest73053:OnSubStart7305303(arg1)
    print("OnSubStart7305303")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 9)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 10)
end

function Quest73053:OnSubFinish7305303(arg1)
    print("OnSubFinish7305303")
    self:SafeDestroyQuestNpc(npcs.Npc20722Data.alias, 3)
end

function Quest73053:OnSubStart7305308(arg1)
    print("OnSubStart7305308")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
    actorMgr:CreateActorWithPos("Q73053Trigger1", "Actor/Gadget/Q73053Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305308_guide").pos, sceneData:GetDummyPoint(3, "Q7305308_guide").rot, true, false, 3)
end

function Quest73053:OnSubFinish7305308(arg1)
    print("OnSubFinish7305308")
end

function Quest73053:OnSubStart7305322(arg1)
    print("OnSubStart7305322")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20722Data.id, 2, npcs.Npc20722Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
end

function Quest73053:OnSubFinish7305322(arg1)
    print("OnSubFinish7305322")
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20722Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

function Quest73053:OnSubStart7305310(arg1)
    print("OnSubStart7305310")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 6)
    actorMgr:CreateActorWithPos("Q73053Trigger2", "Actor/Gadget/Q73053Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305310_guide").pos, sceneData:GetDummyPoint(3, "Q7305310_guide").rot, true, false, 3)
end

function Quest73053:OnSubFinish7305310(arg1)
    print("OnSubFinish7305310")
end

function Quest73053:OnSubStart7305311(arg1)
    print("OnSubStart7305311")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20722Data.id, 2, npcs.Npc20722Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
end

function Quest73053:OnSubFinish7305311(arg1)
    print("OnSubFinish7305311")
end

function Quest73053:OnSubStart7305324(arg1)
    print("OnSubStart7305324")
end

function Quest73053:OnSubFinish7305324(arg1)
    print("OnSubFinish7305324")
end

function Quest73053:OnSubStart7305312(arg1)
    print("OnSubStart7305312")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 9)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 10)
end

function Quest73053:OnSubFinish7305312(arg1)
    print("OnSubFinish7305312")
end

function Quest73053:OnSubStart7305325(arg1)
    print("OnSubStart7305325")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20722Data.id, 2, npcs.Npc20722Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
end

function Quest73053:OnSubFinish7305325(arg1)
    print("OnSubFinish7305325")
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20722Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

function Quest73053:OnSubStart7305328(arg1)
    print("OnSubStart7305328")
end

function Quest73053:OnSubFinish7305328(arg1)
    print("OnSubFinish7305328")
end

function Quest73053:OnSubStart7305318(arg1)
    print("OnSubStart7305318")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 6)
    actorMgr:CreateActorWithPos("Q73053Trigger3", "Actor/Gadget/Q73053Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305318_guide").pos, sceneData:GetDummyPoint(3, "Q7305318_guide").rot, true, false, 3)
end

function Quest73053:OnSubFinish7305318(arg1)
    print("OnSubFinish7305318")
end

function Quest73053:OnSubStart7305319(arg1)
    print("OnSubStart7305319")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20722Data.id, 1, npcs.Npc20722Data.alias)
end

function Quest73053:OnSubFinish7305319(arg1)
    print("OnSubFinish7305319")
end

function Quest73053:OnSubStart7305313(arg1)
    print("OnSubStart7305313")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 9)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 10)
    actorMgr:CreateActorWithPos("Q73053Trigger5", "Actor/Gadget/Q73053Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305313_guide").pos, sceneData:GetDummyPoint(3, "Q7305313_guide").rot, true, false, 3)
end

function Quest73053:OnSubFinish7305313(arg1)
    print("OnSubFinish7305313")
end

function Quest73053:OnSubStart7305320(arg1)
    print("OnSubStart7305320")
end

function Quest73053:OnSubFinish7305320(arg1)
    print("OnSubFinish7305320")
end

function Quest73053:OnSubStart7305314(arg1)
    print("OnSubStart7305314")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 9)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 10)
end

function Quest73053:OnSubFinish7305314(arg1)
    print("OnSubFinish7305314")
end

function Quest73053:OnSubStart7305315(arg1)
    print("OnSubStart7305315")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 5)
end

function Quest73053:OnSubFinish7305315(arg1)
    print("OnSubFinish7305315")
end

function Quest73053:OnSubStart7305316(arg1)
    print("OnSubStart7305316")
end

function Quest73053:OnSubFinish7305316(arg1)
    print("OnSubFinish7305316")
end

function Quest73053:OnSubStart7305321(arg1)
    print("OnSubStart7305321")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.PaimonData.id, 5, npcs.PaimonData.alias)
end

function Quest73053:OnSubFinish7305321(arg1)
    print("OnSubFinish7305321")
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20722Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest73053:OnSubStart7305317(arg1)
    print("OnSubStart7305317")
end

function Quest73053:OnSubFinish7305317(arg1)
    print("OnSubFinish7305317")
end

function Quest73053:OnSubStart7305329(arg1)
    print("OnSubStart7305329")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 6)
    actorMgr:CreateActorWithPos("Q73053Trigger6", "Actor/Gadget/Q73053Trigger6", 70900002, 0, {x = -2351.0, y = 74.131, z = 5269.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73053:OnSubFinish7305329(arg1)
    print("OnSubFinish7305329")
end

function Quest73053:OnSubStart7305326(arg1)
    print("OnSubStart7305326")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 6)
    actorMgr:CreateActorWithPos("Q73053Trigger4", "Actor/Gadget/Q73053Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305326_guide").pos, sceneData:GetDummyPoint(3, "Q7305326_guide").rot, true, false, 3)
end

function Quest73053:OnSubFinish7305326(arg1)
    print("OnSubFinish7305326")
    self:SafeDestroyQuestNpc(npcs.Npc1702Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20916Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20917Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20918Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20919Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20920Data.alias, 3)
end

function Quest73053:OnSubStart7305327(arg1)
    print("OnSubStart7305327")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20722Data.id, 2, npcs.Npc20722Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
end

function Quest73053:OnSubFinish7305327(arg1)
    print("OnSubFinish7305327")
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20722Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

function Quest73053:OnSubStart7305323(arg1)
    print("OnSubStart7305323")
end

function Quest73053:OnSubFinish7305323(arg1)
    print("OnSubFinish7305323")
end

function Quest73053:OnSubStart7305309(arg1)
    print("OnSubStart7305309")
end

function Quest73053:OnSubFinish7305309(arg1)
    print("OnSubFinish7305309")
end

function Quest73053:OnSubStart7305307(arg1)
    print("OnSubStart7305307")
end

function Quest73053:OnSubFinish7305307(arg1)
    print("OnSubFinish7305307")
end

function Quest73053:OnSubStart7305306(arg1)
    print("OnSubStart7305306")
end

function Quest73053:OnSubFinish7305306(arg1)
    print("OnSubFinish7305306")
end

function Quest73053:OnSubStart7305305(arg1)
    print("OnSubStart7305305")
end

function Quest73053:OnSubFinish7305305(arg1)
    print("OnSubFinish7305305")
end

function Quest73053:OnSubStart7305304(arg1)
    print("OnSubStart7305304")
end

function Quest73053:OnSubFinish7305304(arg1)
    print("OnSubFinish7305304")
end

return Quest73053
