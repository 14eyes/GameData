require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73063 = class("Quest73063", QuestActorProxy)
Quest73063.defaultAlias = "Quest73063"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73063:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73063:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7306301"] = self.OnSubStart7306301,
        ["7306302"] = self.OnSubStart7306302,
        ["7306303"] = self.OnSubStart7306303,
        ["7306304"] = self.OnSubStart7306304,
        ["7306330"] = self.OnSubStart7306330,
        ["7306305"] = self.OnSubStart7306305,
        ["7306306"] = self.OnSubStart7306306,
        ["7306307"] = self.OnSubStart7306307,
        ["7306308"] = self.OnSubStart7306308,
        ["7306309"] = self.OnSubStart7306309,
        ["7306335"] = self.OnSubStart7306335,
        ["7306310"] = self.OnSubStart7306310,
        ["7306311"] = self.OnSubStart7306311,
        ["7306336"] = self.OnSubStart7306336,
        ["7306312"] = self.OnSubStart7306312,
        ["7306313"] = self.OnSubStart7306313,
        ["7306314"] = self.OnSubStart7306314,
        ["7306315"] = self.OnSubStart7306315,
        ["7306337"] = self.OnSubStart7306337,
        ["7306316"] = self.OnSubStart7306316,
        ["7306317"] = self.OnSubStart7306317,
        ["7306318"] = self.OnSubStart7306318,
        ["7306319"] = self.OnSubStart7306319,
        ["7306331"] = self.OnSubStart7306331,
        ["7306332"] = self.OnSubStart7306332,
        ["7306320"] = self.OnSubStart7306320,
        ["7306321"] = self.OnSubStart7306321,
        ["7306322"] = self.OnSubStart7306322,
        ["7306323"] = self.OnSubStart7306323,
        ["7306324"] = self.OnSubStart7306324,
        ["7306325"] = self.OnSubStart7306325,
        ["7306326"] = self.OnSubStart7306326,
        ["7306327"] = self.OnSubStart7306327,
        ["7306338"] = self.OnSubStart7306338,
        ["7306328"] = self.OnSubStart7306328,
        ["7306329"] = self.OnSubStart7306329,
        ["7306333"] = self.OnSubStart7306333,
        ["7306334"] = self.OnSubStart7306334
    }
end

function Quest73063:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7306301"] = self.OnSubFinish7306301,
        ["7306302"] = self.OnSubFinish7306302,
        ["7306303"] = self.OnSubFinish7306303,
        ["7306304"] = self.OnSubFinish7306304,
        ["7306330"] = self.OnSubFinish7306330,
        ["7306305"] = self.OnSubFinish7306305,
        ["7306306"] = self.OnSubFinish7306306,
        ["7306307"] = self.OnSubFinish7306307,
        ["7306308"] = self.OnSubFinish7306308,
        ["7306309"] = self.OnSubFinish7306309,
        ["7306335"] = self.OnSubFinish7306335,
        ["7306310"] = self.OnSubFinish7306310,
        ["7306311"] = self.OnSubFinish7306311,
        ["7306336"] = self.OnSubFinish7306336,
        ["7306312"] = self.OnSubFinish7306312,
        ["7306313"] = self.OnSubFinish7306313,
        ["7306314"] = self.OnSubFinish7306314,
        ["7306315"] = self.OnSubFinish7306315,
        ["7306337"] = self.OnSubFinish7306337,
        ["7306316"] = self.OnSubFinish7306316,
        ["7306317"] = self.OnSubFinish7306317,
        ["7306318"] = self.OnSubFinish7306318,
        ["7306319"] = self.OnSubFinish7306319,
        ["7306331"] = self.OnSubFinish7306331,
        ["7306332"] = self.OnSubFinish7306332,
        ["7306320"] = self.OnSubFinish7306320,
        ["7306321"] = self.OnSubFinish7306321,
        ["7306322"] = self.OnSubFinish7306322,
        ["7306323"] = self.OnSubFinish7306323,
        ["7306324"] = self.OnSubFinish7306324,
        ["7306325"] = self.OnSubFinish7306325,
        ["7306326"] = self.OnSubFinish7306326,
        ["7306327"] = self.OnSubFinish7306327,
        ["7306338"] = self.OnSubFinish7306338,
        ["7306328"] = self.OnSubFinish7306328,
        ["7306329"] = self.OnSubFinish7306329,
        ["7306333"] = self.OnSubFinish7306333,
        ["7306334"] = self.OnSubFinish7306334
    }
end

function Quest73063:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73063:Start()
    print("Start")
end

function Quest73063:OnDestroy()
    print("OnDestroy")
end

function Quest73063:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73063:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73063:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73063:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73063:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73063:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73063:NpcCreateWithTrigger(arg1, arg2, arg3)
    self:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest73063:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73063:OnSubStart7306301(arg1)
    print("OnSubStart7306301")
end

function Quest73063:OnSubFinish7306301(arg1)
    print("OnSubFinish7306301")
end

function Quest73063:OnSubStart7306302(arg1)
    print("OnSubStart7306302")
end

function Quest73063:OnSubFinish7306302(arg1)
    print("OnSubFinish7306302")
end

function Quest73063:OnSubStart7306303(arg1)
    print("OnSubStart7306303")
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 1)
    actorMgr:CreateActorWithPos("Q7306303Trigger", "Actor/Gadget/Q7306303Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306303_N20577").pos, sceneData:GetDummyPoint(3, "Q7306303_N20577").rot, true, false, 3)
end

function Quest73063:OnSubFinish7306303(arg1)
    print("OnSubFinish7306303")
    self:NarratorOnlyTask(datas.Q7306305NarratorTable, nil, "")
end

function Quest73063:OnSubStart7306304(arg1)
    print("OnSubStart7306304")
    self:NpcDestroy(npcs.Npc20577Data.alias, 3)
end

function Quest73063:OnSubFinish7306304(arg1)
    print("OnSubFinish7306304")
end

function Quest73063:OnSubStart7306330(arg1)
    print("OnSubStart7306330")
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 1)
    actorMgr:CreateActorWithPos("Q7306330Trigger", "Actor/Gadget/Q7306330Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306303_N20577").pos, sceneData:GetDummyPoint(3, "Q7306303_N20577").rot, true, false, 3)
end

function Quest73063:OnSubFinish7306330(arg1)
    print("OnSubFinish7306330")
    self:NarratorOnlyTask(datas.Q7306306NarratorTable, nil, "")
end

function Quest73063:OnSubStart7306305(arg1)
    print("OnSubStart7306305")
end

function Quest73063:OnSubFinish7306305(arg1)
    print("OnSubFinish7306305")
    self:NarratorOnlyTask(datas.Q7306307NarratorTable, nil, "")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
end

function Quest73063:OnSubStart7306306(arg1)
    print("OnSubStart7306306")
end

function Quest73063:OnSubFinish7306306(arg1)
    print("OnSubFinish7306306")
    self:NarratorOnlyTask(datas.Q7306307NarratorTable, nil, "")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
end

function Quest73063:OnSubStart7306307(arg1)
    print("OnSubStart7306307")
end

function Quest73063:OnSubFinish7306307(arg1)
    print("OnSubFinish7306307")
end

function Quest73063:OnSubStart7306308(arg1)
    print("OnSubStart7306308")
end

function Quest73063:OnSubFinish7306308(arg1)
    print("OnSubFinish7306308")
end

function Quest73063:OnSubStart7306309(arg1)
    print("OnSubStart7306309")
    actorMgr:CreateActorWithPos("Q7306309Trigger", "Actor/Gadget/Q7306309Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306309_guide").pos, sceneData:GetDummyPoint(3, "Q7306309_guide").rot, true, false, 3)
end

function Quest73063:OnSubFinish7306309(arg1)
    print("OnSubFinish7306309")
end

function Quest73063:OnSubStart7306335(arg1)
    print("OnSubStart7306335")
    actorMgr:CreateActorWithPos("Q7306335Trigger", "Actor/Gadget/Q7306335Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306335_guide").pos, sceneData:GetDummyPoint(3, "Q7306335_guide").rot, true, false, 3)
end

function Quest73063:OnSubFinish7306335(arg1)
    print("OnSubFinish7306335")
end

function Quest73063:OnSubStart7306310(arg1)
    print("OnSubStart7306310")
end

function Quest73063:OnSubFinish7306310(arg1)
    print("OnSubFinish7306310")
end

function Quest73063:OnSubStart7306311(arg1)
    print("OnSubStart7306311")
    actorMgr:CreateActorWithPos("Q7306311Trigger", "Actor/Gadget/Q7306311Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306311_N20577").pos, sceneData:GetDummyPoint(3, "Q7306311_N20577").rot, true, false, 3)
end

function Quest73063:OnSubFinish7306311(arg1)
    print("OnSubFinish7306311")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20577Data.id, 1, npcs.Npc20577Data.alias)
end

function Quest73063:OnSubStart7306336(arg1)
    print("OnSubStart7306336")
end

function Quest73063:OnSubFinish7306336(arg1)
    print("OnSubFinish7306336")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
end

function Quest73063:OnSubStart7306312(arg1)
    print("OnSubStart7306312")
end

function Quest73063:OnSubFinish7306312(arg1)
    print("OnSubFinish7306312")
end

function Quest73063:OnSubStart7306313(arg1)
    print("OnSubStart7306313")
end

function Quest73063:OnSubFinish7306313(arg1)
    print("OnSubFinish7306313")
end

function Quest73063:OnSubStart7306314(arg1)
    print("OnSubStart7306314")
end

function Quest73063:OnSubFinish7306314(arg1)
    print("OnSubFinish7306314")
end

function Quest73063:OnSubStart7306315(arg1)
    print("OnSubStart7306315")
end

function Quest73063:OnSubFinish7306315(arg1)
    print("OnSubFinish7306315")
end

function Quest73063:OnSubStart7306337(arg1)
    print("OnSubStart7306337")
end

function Quest73063:OnSubFinish7306337(arg1)
    print("OnSubFinish7306337")
end

function Quest73063:OnSubStart7306316(arg1)
    print("OnSubStart7306316")
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(2, function(arg1)
            arg1:NpcCreateWithTrigger(npcs.Npc20577Data.id, 7306316, 1)
        end)
    end)
end

function Quest73063:OnSubFinish7306316(arg1)
    print("OnSubFinish7306316")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
end

function Quest73063:OnSubStart7306317(arg1)
    print("OnSubStart7306317")
    actorMgr:CreateActorWithPos("Q7306318Trigger", "Actor/Gadget/Q7306318Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306317_guide").pos, sceneData:GetDummyPoint(3, "Q7306317_guide").rot, true, false, 3)
end

function Quest73063:OnSubFinish7306317(arg1)
    print("OnSubFinish7306317")
    self:NarratorOnlyTask(datas.Q7306317NarratorTable, nil, "")
end

function Quest73063:OnSubStart7306318(arg1)
    print("OnSubStart7306318")
    actorMgr:CreateActorWithPos("Q7306319Trigger", "Actor/Gadget/Q7306319Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306318_guide").pos, sceneData:GetDummyPoint(3, "Q7306318_guide").rot, true, false, 3)
end

function Quest73063:OnSubFinish7306318(arg1)
    print("OnSubFinish7306318")
    self:NarratorOnlyTask(datas.Q7306318NarratorTable, nil, "")
end

function Quest73063:OnSubStart7306319(arg1)
    print("OnSubStart7306319")
    actorMgr:CreateActorWithPos("Q7306320Trigger", "Actor/Gadget/Q7306320Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306319_guide").pos, sceneData:GetDummyPoint(3, "Q7306319_guide").rot, true, false, 3)
end

function Quest73063:OnSubFinish7306319(arg1)
    print("OnSubFinish7306319")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20577Data.id, 1, npcs.Npc20577Data.alias)
end

function Quest73063:OnSubStart7306331(arg1)
    print("OnSubStart7306331")
end

function Quest73063:OnSubFinish7306331(arg1)
    print("OnSubFinish7306331")
end

function Quest73063:OnSubStart7306332(arg1)
    print("OnSubStart7306332")
end

function Quest73063:OnSubFinish7306332(arg1)
    print("OnSubFinish7306332")
end

function Quest73063:OnSubStart7306320(arg1)
    print("OnSubStart7306320")
end

function Quest73063:OnSubFinish7306320(arg1)
    print("OnSubFinish7306320")
    self:NarratorOnlyTask(datas.Q7306321NarratorTable, nil, "")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
end

function Quest73063:OnSubStart7306321(arg1)
    print("OnSubStart7306321")
    actorMgr:CreateActorWithPos("Q7306321Trigger", "Actor/Gadget/Q7306321Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306321_guide").pos, sceneData:GetDummyPoint(3, "Q7306321_guide").rot, true, false, 3)
end

function Quest73063:OnSubFinish7306321(arg1)
    print("OnSubFinish7306321")
end

function Quest73063:OnSubStart7306322(arg1)
    print("OnSubStart7306322")
    actorMgr:CreateActorWithPos("Q7306322Trigger", "Actor/Gadget/Q7306322Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306322_guide").pos, sceneData:GetDummyPoint(3, "Q7306322_guide").rot, true, false, 3)
end

function Quest73063:OnSubFinish7306322(arg1)
    print("OnSubFinish7306322")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20577Data.id, 1, npcs.Npc20577Data.alias)
end

function Quest73063:OnSubStart7306323(arg1)
    print("OnSubStart7306323")
end

function Quest73063:OnSubFinish7306323(arg1)
    print("OnSubFinish7306323")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
end

function Quest73063:OnSubStart7306324(arg1)
    print("OnSubStart7306324")
end

function Quest73063:OnSubFinish7306324(arg1)
    print("OnSubFinish7306324")
end

function Quest73063:OnSubStart7306325(arg1)
    print("OnSubStart7306325")
end

function Quest73063:OnSubFinish7306325(arg1)
    print("OnSubFinish7306325")
end

function Quest73063:OnSubStart7306326(arg1)
    print("OnSubStart7306326")
end

function Quest73063:OnSubFinish7306326(arg1)
    print("OnSubFinish7306326")
end

function Quest73063:OnSubStart7306327(arg1)
    print("OnSubStart7306327")
end

function Quest73063:OnSubFinish7306327(arg1)
    print("OnSubFinish7306327")
end

function Quest73063:OnSubStart7306338(arg1)
    print("OnSubStart7306338")
end

function Quest73063:OnSubFinish7306338(arg1)
    print("OnSubFinish7306338")
end

function Quest73063:OnSubStart7306328(arg1)
    print("OnSubStart7306328")
    actorMgr:CreateActorWithPos("Q7306328Trigger", "Actor/Gadget/Q7306328Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306324_guide").pos, sceneData:GetDummyPoint(3, "Q7306324_guide").rot, true, false, 3)
end

function Quest73063:OnSubFinish7306328(arg1)
    print("OnSubFinish7306328")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20577Data.id, 1, npcs.Npc20577Data.alias)
end

function Quest73063:OnSubStart7306329(arg1)
    print("OnSubStart7306329")
end

function Quest73063:OnSubFinish7306329(arg1)
    print("OnSubFinish7306329")
end

function Quest73063:OnSubStart7306333(arg1)
    print("OnSubStart7306333")
    self:NpcCreate(arg1, npcs.Npc20577Data.id, 1)
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(7306333, function(arg1)
            actorUtils.FinishQuestID(false, 7306333)
        end, nil, nil, false)
    end)
end

function Quest73063:OnSubFinish7306333(arg1)
    print("OnSubFinish7306333")
    self:TransmitPlayerWithTextByQuestId(7306333, 1, datas.TextmapId, 5)
end

function Quest73063:OnSubStart7306334(arg1)
    print("OnSubStart7306334")
end

function Quest73063:OnSubFinish7306334(arg1)
    print("OnSubFinish7306334")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
end

return Quest73063
