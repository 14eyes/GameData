require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73305 = class("Quest73305", QuestActorProxy)
Quest73305.defaultAlias = "Quest73305"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73305:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73305:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7330501"] = self.OnSubStart7330501,
        ["7330521"] = self.OnSubStart7330521,
        ["7330520"] = self.OnSubStart7330520,
        ["7330519"] = self.OnSubStart7330519,
        ["7330518"] = self.OnSubStart7330518,
        ["7330517"] = self.OnSubStart7330517,
        ["7330516"] = self.OnSubStart7330516,
        ["7330515"] = self.OnSubStart7330515,
        ["7330514"] = self.OnSubStart7330514,
        ["7330512"] = self.OnSubStart7330512,
        ["7330511"] = self.OnSubStart7330511,
        ["7330502"] = self.OnSubStart7330502,
        ["7330522"] = self.OnSubStart7330522,
        ["7330503"] = self.OnSubStart7330503,
        ["7330504"] = self.OnSubStart7330504,
        ["7330505"] = self.OnSubStart7330505,
        ["7330506"] = self.OnSubStart7330506,
        ["7330507"] = self.OnSubStart7330507,
        ["7330513"] = self.OnSubStart7330513,
        ["7330508"] = self.OnSubStart7330508,
        ["7330510"] = self.OnSubStart7330510,
        ["7330509"] = self.OnSubStart7330509
    }
end

function Quest73305:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7330501"] = self.OnSubFinish7330501,
        ["7330521"] = self.OnSubFinish7330521,
        ["7330520"] = self.OnSubFinish7330520,
        ["7330519"] = self.OnSubFinish7330519,
        ["7330518"] = self.OnSubFinish7330518,
        ["7330517"] = self.OnSubFinish7330517,
        ["7330516"] = self.OnSubFinish7330516,
        ["7330515"] = self.OnSubFinish7330515,
        ["7330514"] = self.OnSubFinish7330514,
        ["7330512"] = self.OnSubFinish7330512,
        ["7330511"] = self.OnSubFinish7330511,
        ["7330502"] = self.OnSubFinish7330502,
        ["7330522"] = self.OnSubFinish7330522,
        ["7330503"] = self.OnSubFinish7330503,
        ["7330504"] = self.OnSubFinish7330504,
        ["7330505"] = self.OnSubFinish7330505,
        ["7330506"] = self.OnSubFinish7330506,
        ["7330507"] = self.OnSubFinish7330507,
        ["7330513"] = self.OnSubFinish7330513,
        ["7330508"] = self.OnSubFinish7330508,
        ["7330510"] = self.OnSubFinish7330510,
        ["7330509"] = self.OnSubFinish7330509
    }
end

function Quest73305:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73305:Start()
    print("Start")
end

function Quest73305:OnDestroy()
    print("OnDestroy")
end

function Quest73305:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73305:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73305:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73305:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73305:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest73305:OnSubStart7330501(arg1)
    print("OnSubStart7330501")
end

function Quest73305:OnSubFinish7330501(arg1)
    print("OnSubFinish7330501")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20846Data.id, 1, npcs.Npc20846Data.alias)
end

function Quest73305:OnSubStart7330521(arg1)
    print("OnSubStart7330521")
end

function Quest73305:OnSubFinish7330521(arg1)
    print("OnSubFinish7330521")
end

function Quest73305:OnSubStart7330520(arg1)
    print("OnSubStart7330520")
end

function Quest73305:OnSubFinish7330520(arg1)
    print("OnSubFinish7330520")
end

function Quest73305:OnSubStart7330519(arg1)
    print("OnSubStart7330519")
end

function Quest73305:OnSubFinish7330519(arg1)
    print("OnSubFinish7330519")
end

function Quest73305:OnSubStart7330518(arg1)
    print("OnSubStart7330518")
end

function Quest73305:OnSubFinish7330518(arg1)
    print("OnSubFinish7330518")
end

function Quest73305:OnSubStart7330517(arg1)
    print("OnSubStart7330517")
end

function Quest73305:OnSubFinish7330517(arg1)
    print("OnSubFinish7330517")
end

function Quest73305:OnSubStart7330516(arg1)
    print("OnSubStart7330516")
end

function Quest73305:OnSubFinish7330516(arg1)
    print("OnSubFinish7330516")
end

function Quest73305:OnSubStart7330515(arg1)
    print("OnSubStart7330515")
end

function Quest73305:OnSubFinish7330515(arg1)
    print("OnSubFinish7330515")
end

function Quest73305:OnSubStart7330514(arg1)
    print("OnSubStart7330514")
end

function Quest73305:OnSubFinish7330514(arg1)
    print("OnSubFinish7330514")
end

function Quest73305:OnSubStart7330512(arg1)
    print("OnSubStart7330512")
end

function Quest73305:OnSubFinish7330512(arg1)
    print("OnSubFinish7330512")
    this:SafeDestroyQuestNpc(npcs.Npc20846Data.alias, 3)
end

function Quest73305:OnSubStart7330511(arg1)
    print("OnSubStart7330511")
end

function Quest73305:OnSubFinish7330511(arg1)
    print("OnSubFinish7330511")
end

function Quest73305:OnSubStart7330502(arg1)
    print("OnSubStart7330502")
    this:PlayCutsceneIndex(7330502, function(arg1)
        actorUtils.FinishQuestID(false, 7330502)
    end, nil, nil, false)
end

function Quest73305:OnSubFinish7330502(arg1)
    print("OnSubFinish7330502")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20846Data.id, 1, npcs.Npc20846Data.alias)
end

function Quest73305:OnSubStart7330522(arg1)
    print("OnSubStart7330522")
end

function Quest73305:OnSubFinish7330522(arg1)
    print("OnSubFinish7330522")
    this:SafeDestroyQuestNpc(npcs.Npc20846Data.alias, 3)
end

function Quest73305:OnSubStart7330503(arg1)
    print("OnSubStart7330503")
    actorMgr:CreateActorWithPos("Q7330503Trigger", "Actor/Gadget/Q7330503Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7330503_guide").pos, sceneData:GetDummyPoint(3, "Q7330503_guide").rot, true, false, 3)
end

function Quest73305:OnSubFinish7330503(arg1)
    print("OnSubFinish7330503")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20846Data.id, 1, npcs.Npc20846Data.alias)
end

function Quest73305:OnSubStart7330504(arg1)
    print("OnSubStart7330504")
end

function Quest73305:OnSubFinish7330504(arg1)
    print("OnSubFinish7330504")
    this:SafeDestroyQuestNpc(npcs.Npc20846Data.alias, 3)
end

function Quest73305:OnSubStart7330505(arg1)
    print("OnSubStart7330505")
end

function Quest73305:OnSubFinish7330505(arg1)
    print("OnSubFinish7330505")
    this:NpcCreateWithTriggerBlack(npcs.Npc20846Data.id, 7330505, 1)
end

function Quest73305:OnSubStart7330506(arg1)
    print("OnSubStart7330506")
end

function Quest73305:OnSubFinish7330506(arg1)
    print("OnSubFinish7330506")
    this:SafeDestroyQuestNpc(npcs.Npc20846Data.alias, 3)
end

function Quest73305:OnSubStart7330507(arg1)
    print("OnSubStart7330507")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7330507, function(arg1)
            actorUtils.FinishQuestID(false, 7330507)
        end, nil, nil, false)
    end)
end

function Quest73305:OnSubFinish7330507(arg1)
    print("OnSubFinish7330507")
end

function Quest73305:OnSubStart7330513(arg1)
    print("OnSubStart7330513")
end

function Quest73305:OnSubFinish7330513(arg1)
    print("OnSubFinish7330513")
end

function Quest73305:OnSubStart7330508(arg1)
    print("OnSubStart7330508")
end

function Quest73305:OnSubFinish7330508(arg1)
    print("OnSubFinish7330508")
end

function Quest73305:OnSubStart7330510(arg1)
    print("OnSubStart7330510")
    this:PlayCutsceneIndex(7330510, function(arg1)
        actorUtils.FinishQuestID(false, 7330510)
    end, nil, nil, false)
end

function Quest73305:OnSubFinish7330510(arg1)
    print("OnSubFinish7330510")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20846Data.id, 1, npcs.Npc20846Data.alias)
end

function Quest73305:OnSubStart7330509(arg1)
    print("OnSubStart7330509")
end

function Quest73305:OnSubFinish7330509(arg1)
    print("OnSubFinish7330509")
    this:SafeDestroyQuestNpc(npcs.Npc20846Data.alias, 3)
end

return Quest73305
