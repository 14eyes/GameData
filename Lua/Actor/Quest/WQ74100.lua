require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74100 = class("Quest74100", QuestActorProxy)
Quest74100.defaultAlias = "Quest74100"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74100:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74100:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7410001"] = self.OnSubStart7410001,
        ["7410003"] = self.OnSubStart7410003,
        ["7410004"] = self.OnSubStart7410004,
        ["7410006"] = self.OnSubStart7410006,
        ["7410005"] = self.OnSubStart7410005,
        ["7410007"] = self.OnSubStart7410007,
        ["7410009"] = self.OnSubStart7410009,
        ["7410010"] = self.OnSubStart7410010,
        ["7410011"] = self.OnSubStart7410011,
        ["7410012"] = self.OnSubStart7410012,
        ["7410013"] = self.OnSubStart7410013,
        ["7410002"] = self.OnSubStart7410002,
        ["7410008"] = self.OnSubStart7410008
    }
end

function Quest74100:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7410001"] = self.OnSubFinish7410001,
        ["7410003"] = self.OnSubFinish7410003,
        ["7410004"] = self.OnSubFinish7410004,
        ["7410006"] = self.OnSubFinish7410006,
        ["7410005"] = self.OnSubFinish7410005,
        ["7410007"] = self.OnSubFinish7410007,
        ["7410009"] = self.OnSubFinish7410009,
        ["7410010"] = self.OnSubFinish7410010,
        ["7410011"] = self.OnSubFinish7410011,
        ["7410012"] = self.OnSubFinish7410012,
        ["7410013"] = self.OnSubFinish7410013,
        ["7410002"] = self.OnSubFinish7410002,
        ["7410008"] = self.OnSubFinish7410008
    }
end

function Quest74100:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74100:Start()
    print("Start")
end

function Quest74100:OnDestroy()
    print("OnDestroy")
end

function Quest74100:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74100:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74100:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74100:OnSubStart7410001(arg1)
    print("OnSubStart7410001")
end

function Quest74100:OnSubFinish7410001(arg1)
    print("OnSubFinish7410001")
end

function Quest74100:OnSubStart7410003(arg1)
    print("OnSubStart7410003")
    this:CreateQuestNpc(arg1, npcs.Npc20996Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20997Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20998Data.id, 0)
end

function Quest74100:OnSubFinish7410003(arg1)
    print("OnSubFinish7410003")
end

function Quest74100:OnSubStart7410004(arg1)
    print("OnSubStart7410004")
    this:CreateQuestNpc(arg1, npcs.Npc20999Data.id, 0)
end

function Quest74100:OnSubFinish7410004(arg1)
    print("OnSubFinish7410004")
end

function Quest74100:OnSubStart7410006(arg1)
    print("OnSubStart7410006")
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc20995Data.alias):DoFreeStyle(6, true, nil, true, true, false, false)
end

function Quest74100:OnSubFinish7410006(arg1)
    print("OnSubFinish7410006")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 1080)
end

function Quest74100:OnSubStart7410005(arg1)
    print("OnSubStart7410005")
end

function Quest74100:OnSubFinish7410005(arg1)
    print("OnSubFinish7410005")
end

function Quest74100:OnSubStart7410007(arg1)
    print("OnSubStart7410007")
end

function Quest74100:OnSubFinish7410007(arg1)
    print("OnSubFinish7410007")
end

function Quest74100:OnSubStart7410009(arg1)
    print("OnSubStart7410009")
end

function Quest74100:OnSubFinish7410009(arg1)
    print("OnSubFinish7410009")
end

function Quest74100:OnSubStart7410010(arg1)
    print("OnSubStart7410010")
end

function Quest74100:OnSubFinish7410010(arg1)
    print("OnSubFinish7410010")
end

function Quest74100:OnSubStart7410011(arg1)
    print("OnSubStart7410011")
end

function Quest74100:OnSubFinish7410011(arg1)
    print("OnSubFinish7410011")
end

function Quest74100:OnSubStart7410012(arg1)
    print("OnSubStart7410012")
end

function Quest74100:OnSubFinish7410012(arg1)
    print("OnSubFinish7410012")
end

function Quest74100:OnSubStart7410013(arg1)
    print("OnSubStart7410013")
end

function Quest74100:OnSubFinish7410013(arg1)
    print("OnSubFinish7410013")
end

function Quest74100:OnSubStart7410002(arg1)
    print("OnSubStart7410002")
end

function Quest74100:OnSubFinish7410002(arg1)
    print("OnSubFinish7410002")
end

function Quest74100:OnSubStart7410008(arg1)
    print("OnSubStart7410008")
end

function Quest74100:OnSubFinish7410008(arg1)
    print("OnSubFinish7410008")
end

return Quest74100
