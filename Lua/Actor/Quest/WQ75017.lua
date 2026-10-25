require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75017 = class("Quest75017", QuestActorProxy)
Quest75017.defaultAlias = "Quest75017"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75017:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7501730"] = self.OnSubStart7501730,
        ["7501701"] = self.OnSubStart7501701,
        ["7501724"] = self.OnSubStart7501724,
        ["7501725"] = self.OnSubStart7501725,
        ["7501726"] = self.OnSubStart7501726,
        ["7501702"] = self.OnSubStart7501702,
        ["7501731"] = self.OnSubStart7501731,
        ["7501703"] = self.OnSubStart7501703,
        ["7501704"] = self.OnSubStart7501704,
        ["7501732"] = self.OnSubStart7501732,
        ["7501729"] = self.OnSubStart7501729,
        ["7501705"] = self.OnSubStart7501705,
        ["7501706"] = self.OnSubStart7501706,
        ["7501727"] = self.OnSubStart7501727,
        ["7501707"] = self.OnSubStart7501707,
        ["7501720"] = self.OnSubStart7501720,
        ["7501721"] = self.OnSubStart7501721,
        ["7501722"] = self.OnSubStart7501722,
        ["7501723"] = self.OnSubStart7501723,
        ["7501709"] = self.OnSubStart7501709,
        ["7501718"] = self.OnSubStart7501718,
        ["7501710"] = self.OnSubStart7501710,
        ["7501711"] = self.OnSubStart7501711,
        ["7501719"] = self.OnSubStart7501719,
        ["7501712"] = self.OnSubStart7501712,
        ["7501713"] = self.OnSubStart7501713,
        ["7501715"] = self.OnSubStart7501715,
        ["7501716"] = self.OnSubStart7501716
    }
end

function Quest75017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7501730"] = self.OnSubFinish7501730,
        ["7501701"] = self.OnSubFinish7501701,
        ["7501724"] = self.OnSubFinish7501724,
        ["7501725"] = self.OnSubFinish7501725,
        ["7501726"] = self.OnSubFinish7501726,
        ["7501702"] = self.OnSubFinish7501702,
        ["7501731"] = self.OnSubFinish7501731,
        ["7501703"] = self.OnSubFinish7501703,
        ["7501704"] = self.OnSubFinish7501704,
        ["7501732"] = self.OnSubFinish7501732,
        ["7501729"] = self.OnSubFinish7501729,
        ["7501705"] = self.OnSubFinish7501705,
        ["7501706"] = self.OnSubFinish7501706,
        ["7501727"] = self.OnSubFinish7501727,
        ["7501707"] = self.OnSubFinish7501707,
        ["7501720"] = self.OnSubFinish7501720,
        ["7501721"] = self.OnSubFinish7501721,
        ["7501722"] = self.OnSubFinish7501722,
        ["7501723"] = self.OnSubFinish7501723,
        ["7501709"] = self.OnSubFinish7501709,
        ["7501718"] = self.OnSubFinish7501718,
        ["7501710"] = self.OnSubFinish7501710,
        ["7501711"] = self.OnSubFinish7501711,
        ["7501719"] = self.OnSubFinish7501719,
        ["7501712"] = self.OnSubFinish7501712,
        ["7501713"] = self.OnSubFinish7501713,
        ["7501715"] = self.OnSubFinish7501715,
        ["7501716"] = self.OnSubFinish7501716
    }
end

function Quest75017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75017:Start()
    print("Start")
end

function Quest75017:OnDestroy()
    print("OnDestroy")
end

function Quest75017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75017:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75017:OnSubStart7501730(arg1)
    print("OnSubStart7501730")
end

function Quest75017:OnSubFinish7501730(arg1)
    print("OnSubFinish7501730")
end

function Quest75017:OnSubStart7501701(arg1)
    print("OnSubStart7501701")
    this:CreateQuestNpc(arg1, npcs.Npc21533Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q75017Trigger", "Actor/Gadget/Q75017Trigger", 70900002, 0, {x = -391.263, y = 0.413, z = 9666.504}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75017:OnSubFinish7501701(arg1)
    print("OnSubFinish7501701")
end

function Quest75017:OnSubStart7501724(arg1)
    print("OnSubStart7501724")
end

function Quest75017:OnSubFinish7501724(arg1)
    print("OnSubFinish7501724")
end

function Quest75017:OnSubStart7501725(arg1)
    print("OnSubStart7501725")
end

function Quest75017:OnSubFinish7501725(arg1)
    print("OnSubFinish7501725")
end

function Quest75017:OnSubStart7501726(arg1)
    print("OnSubStart7501726")
end

function Quest75017:OnSubFinish7501726(arg1)
    print("OnSubFinish7501726")
end

function Quest75017:OnSubStart7501702(arg1)
    print("OnSubStart7501702")
    this:CreateQuestNpc(arg1, npcs.Npc21533Data.id, 0, false, 0)
end

function Quest75017:OnSubFinish7501702(arg1)
    print("OnSubFinish7501702")
end

function Quest75017:OnSubStart7501731(arg1)
    print("OnSubStart7501731")
    this:CreateQuestNpc(arg1, npcs.Npc21533Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7501731Trigger", "Actor/Gadget/Q7501731Trigger", 70900002, 0, {x = -391.832, y = 5.62, z = 9502.012}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75017:OnSubFinish7501731(arg1)
    print("OnSubFinish7501731")
    this:SafeDestroyQuestNpc(npcs.Npc21533Data.alias, 3)
    this:ActorDestroy("Q7501731Trigger")
end

function Quest75017:OnSubStart7501703(arg1)
    print("OnSubStart7501703")
end

function Quest75017:OnSubFinish7501703(arg1)
    print("OnSubFinish7501703")
    this:CallDelayByQuest("1", 3, function(arg1)
        this:PlayCutsceneIndex(7501703, nil, nil, nil, false)
    end)
end

function Quest75017:OnSubStart7501704(arg1)
    print("OnSubStart7501704")
end

function Quest75017:OnSubFinish7501704(arg1)
    print("OnSubFinish7501704")
end

function Quest75017:OnSubStart7501732(arg1)
    print("OnSubStart7501732")
    actorMgr:CreateActorWithPos("Q7501732Trigger", "Actor/Gadget/Q7501732Trigger", 70900002, 0, {x = -561.079, y = -52.606, z = 9631.084}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75017:OnSubFinish7501732(arg1)
    print("OnSubFinish7501732")
end

function Quest75017:OnSubStart7501729(arg1)
    print("OnSubStart7501729")
    this:CreateQuestNpc(arg1, npcs.Npc21533Data.id, 0, false, 0)
end

function Quest75017:OnSubFinish7501729(arg1)
    print("OnSubFinish7501729")
    this:SafeDestroyQuestNpc(npcs.Npc21533Data.alias, 3)
end

function Quest75017:OnSubStart7501705(arg1)
    print("OnSubStart7501705")
end

function Quest75017:OnSubFinish7501705(arg1)
    print("OnSubFinish7501705")
end

function Quest75017:OnSubStart7501706(arg1)
    print("OnSubStart7501706")
    actorMgr:CreateActorWithPos("Q7501706Trigger", "Actor/Gadget/Q7501706Trigger", 70900002, 0, {x = -392.186, y = -82.488, z = 9578.649}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75017:OnSubFinish7501706(arg1)
    print("OnSubFinish7501706")
end

function Quest75017:OnSubStart7501727(arg1)
    print("OnSubStart7501727")
    this:CreateQuestNpc(arg1, npcs.Npc21532Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7501707Trigger", "Actor/Gadget/Q7501707Trigger", 70900002, 0, {x = -391.055, y = -81.656, z = 9576.018}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75017:OnSubFinish7501727(arg1)
    print("OnSubFinish7501727")
end

function Quest75017:OnSubStart7501707(arg1)
    print("OnSubStart7501707")
    this:CreateQuestNpc(arg1, npcs.Npc21532Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7501707Trigger", "Actor/Gadget/Q7501707Trigger", 70900002, 0, {x = -391.055, y = -81.656, z = 9576.018}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75017:OnSubFinish7501707(arg1)
    print("OnSubFinish7501707")
end

function Quest75017:OnSubStart7501720(arg1)
    print("OnSubStart7501720")
end

function Quest75017:OnSubFinish7501720(arg1)
    print("OnSubFinish7501720")
end

function Quest75017:OnSubStart7501721(arg1)
    print("OnSubStart7501721")
end

function Quest75017:OnSubFinish7501721(arg1)
    print("OnSubFinish7501721")
end

function Quest75017:OnSubStart7501722(arg1)
    print("OnSubStart7501722")
end

function Quest75017:OnSubFinish7501722(arg1)
    print("OnSubFinish7501722")
end

function Quest75017:OnSubStart7501723(arg1)
    print("OnSubStart7501723")
end

function Quest75017:OnSubFinish7501723(arg1)
    print("OnSubFinish7501723")
end

function Quest75017:OnSubStart7501709(arg1)
    print("OnSubStart7501709")
    this:CreateQuestNpc(arg1, npcs.Npc21532Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7501707Trigger", "Actor/Gadget/Q7501707Trigger", 70900002, 0, {x = -391.055, y = -81.656, z = 9576.018}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75017:OnSubFinish7501709(arg1)
    print("OnSubFinish7501709")
    this:SafeDestroyQuestNpc(npcs.Npc21532Data.alias, 3)
end

function Quest75017:OnSubStart7501718(arg1)
    print("OnSubStart7501718")
    actorMgr:CreateActorWithPos("Q7501718Trigger", "Actor/Gadget/Q7501718Trigger", 70900002, 0, {x = -391.411, y = -68.614, z = 9592.916}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75017:OnSubFinish7501718(arg1)
    print("OnSubFinish7501718")
end

function Quest75017:OnSubStart7501710(arg1)
    print("OnSubStart7501710")
end

function Quest75017:OnSubFinish7501710(arg1)
    print("OnSubFinish7501710")
end

function Quest75017:OnSubStart7501711(arg1)
    print("OnSubStart7501711")
end

function Quest75017:OnSubFinish7501711(arg1)
    print("OnSubFinish7501711")
end

function Quest75017:OnSubStart7501719(arg1)
    print("OnSubStart7501719")
    actorMgr:CreateActorWithPos("Q7501719Trigger", "Actor/Gadget/Q7501719Trigger", 70900002, 0, {x = -392.499, y = -68.614, z = 9590.677}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75017:OnSubFinish7501719(arg1)
    print("OnSubFinish7501719")
end

function Quest75017:OnSubStart7501712(arg1)
    print("OnSubStart7501712")
end

function Quest75017:OnSubFinish7501712(arg1)
    print("OnSubFinish7501712")
end

function Quest75017:OnSubStart7501713(arg1)
    print("OnSubStart7501713")
end

function Quest75017:OnSubFinish7501713(arg1)
    print("OnSubFinish7501713")
end

function Quest75017:OnSubStart7501715(arg1)
    print("OnSubStart7501715")
end

function Quest75017:OnSubFinish7501715(arg1)
    print("OnSubFinish7501715")
end

function Quest75017:OnSubStart7501716(arg1)
    print("OnSubStart7501716")
    this:CreateQuestNpc(arg1, npcs.Npc21532Data.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21532Data.alias, "", true)
end

function Quest75017:OnSubFinish7501716(arg1)
    print("OnSubFinish7501716")
    this:ShowBlackScreenWithDialogText(0.1, 2.5, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21532Data.alias, 3)
end

return Quest75017
