require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74193 = class("Quest74193", QuestActorProxy)
Quest74193.defaultAlias = "Quest74193"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74193:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74193:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7419301"] = self.OnSubStart7419301,
        ["7419302"] = self.OnSubStart7419302,
        ["7419303"] = self.OnSubStart7419303,
        ["7419304"] = self.OnSubStart7419304,
        ["7419305"] = self.OnSubStart7419305
    }
end

function Quest74193:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7419301"] = self.OnSubFinish7419301,
        ["7419302"] = self.OnSubFinish7419302,
        ["7419303"] = self.OnSubFinish7419303,
        ["7419304"] = self.OnSubFinish7419304,
        ["7419305"] = self.OnSubFinish7419305
    }
end

function Quest74193:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74193:Start()
    print("Start")
end

function Quest74193:OnDestroy()
    print("OnDestroy")
end

function Quest74193:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74193:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74193:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74193:OnSubStart7419301(arg1)
    print("OnSubStart7419301")
    this:CreateQuestNpc(arg1, npcs.Npc5325Data.id, 0)
end

function Quest74193:OnSubFinish7419301(arg1)
    print("OnSubFinish7419301")
end

function Quest74193:OnSubStart7419302(arg1)
    print("OnSubStart7419302")
end

function Quest74193:OnSubFinish7419302(arg1)
    print("OnSubFinish7419302")
end

function Quest74193:OnSubStart7419303(arg1)
    print("OnSubStart7419303")
    this:RequestInteraction(npcs.Npc5325Data.alias, "", true)
end

function Quest74193:OnSubFinish7419303(arg1)
    print("OnSubFinish7419303")
end

function Quest74193:OnSubStart7419304(arg1)
    print("OnSubStart7419304")
end

function Quest74193:OnSubFinish7419304(arg1)
    print("OnSubFinish7419304")
end

function Quest74193:OnSubStart7419305(arg1)
    print("OnSubStart7419305")
    this:RequestInteraction(npcs.Npc5325Data.alias, "", true)
end

function Quest74193:OnSubFinish7419305(arg1)
    print("OnSubFinish7419305")
    this:ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, nil, nil, nil, 0, false, true)
    this:CallDelay(0.8, function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc5325Data.alias, 3)
    end)
end

return Quest74193
