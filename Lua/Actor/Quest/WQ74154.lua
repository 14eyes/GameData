require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74154 = class("Quest74154", QuestActorProxy)
Quest74154.defaultAlias = "Quest74154"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74154:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74154:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7415408"] = self.OnSubStart7415408,
        ["7415401"] = self.OnSubStart7415401,
        ["7415402"] = self.OnSubStart7415402,
        ["7415403"] = self.OnSubStart7415403,
        ["7415404"] = self.OnSubStart7415404,
        ["7415405"] = self.OnSubStart7415405,
        ["7415406"] = self.OnSubStart7415406,
        ["7415407"] = self.OnSubStart7415407
    }
end

function Quest74154:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7415408"] = self.OnSubFinish7415408,
        ["7415401"] = self.OnSubFinish7415401,
        ["7415402"] = self.OnSubFinish7415402,
        ["7415403"] = self.OnSubFinish7415403,
        ["7415404"] = self.OnSubFinish7415404,
        ["7415405"] = self.OnSubFinish7415405,
        ["7415406"] = self.OnSubFinish7415406,
        ["7415407"] = self.OnSubFinish7415407
    }
end

function Quest74154:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74154:Start()
    print("Start")
end

function Quest74154:OnDestroy()
    print("OnDestroy")
end

function Quest74154:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74154:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74154:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74154:OnSubStart7415408(arg1)
    print("OnSubStart7415408")
end

function Quest74154:OnSubFinish7415408(arg1)
    print("OnSubFinish7415408")
end

function Quest74154:OnSubStart7415401(arg1)
    print("OnSubStart7415401")
    this:CreateQuestNpc(arg1, npcs.Npc21253Data.id, 0)
    actorMgr:CreateActorWithPos("Q74154Trigger", "Actor/Gadget/Q74154Trigger", 70900002, 0, {x = 3590.228, y = 434.869, z = 4530.83}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74154:OnSubFinish7415401(arg1)
    print("OnSubFinish7415401")
    this:TransmitPlayerById(arg1, 1)
    this:SafeDestroyQuestNpc(npcs.Npc21253Data.alias, 3)
end

function Quest74154:OnSubStart7415402(arg1)
    print("OnSubStart7415402")
    actorMgr:CreateActorWithPos("Q7415402Trigger1", "Actor/Gadget/Q7415402Trigger1", 70900002, 0, {x = 3592.889, y = 437.601, z = 4512.413}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74154:OnSubFinish7415402(arg1)
    print("OnSubFinish7415402")
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest74154:OnSubStart7415403(arg1)
    print("OnSubStart7415403")
end

function Quest74154:OnSubFinish7415403(arg1)
    print("OnSubFinish7415403")
end

function Quest74154:OnSubStart7415404(arg1)
    print("OnSubStart7415404")
end

function Quest74154:OnSubFinish7415404(arg1)
    print("OnSubFinish7415404")
end

function Quest74154:OnSubStart7415405(arg1)
    print("OnSubStart7415405")
end

function Quest74154:OnSubFinish7415405(arg1)
    print("OnSubFinish7415405")
end

function Quest74154:OnSubStart7415406(arg1)
    print("OnSubStart7415406")
end

function Quest74154:OnSubFinish7415406(arg1)
    print("OnSubFinish7415406")
end

function Quest74154:OnSubStart7415407(arg1)
    print("OnSubStart7415407")
    this:CreateQuestNpc(arg1, npcs.Npc21264Data.id, 0)
end

function Quest74154:OnSubFinish7415407(arg1)
    print("OnSubFinish7415407")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21264Data.alias, 3)
end

return Quest74154
