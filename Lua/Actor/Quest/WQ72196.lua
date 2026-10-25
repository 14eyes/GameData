require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72196 = class("Quest72196", QuestActorProxy)
Quest72196.defaultAlias = "Quest72196"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72196:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72196:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7219614"] = self.OnSubStart7219614,
        ["7219606"] = self.OnSubStart7219606,
        ["7219612"] = self.OnSubStart7219612,
        ["7219607"] = self.OnSubStart7219607,
        ["7219608"] = self.OnSubStart7219608,
        ["7219613"] = self.OnSubStart7219613,
        ["7219611"] = self.OnSubStart7219611
    }
end

function Quest72196:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7219614"] = self.OnSubFinish7219614,
        ["7219606"] = self.OnSubFinish7219606,
        ["7219612"] = self.OnSubFinish7219612,
        ["7219607"] = self.OnSubFinish7219607,
        ["7219608"] = self.OnSubFinish7219608,
        ["7219613"] = self.OnSubFinish7219613,
        ["7219611"] = self.OnSubFinish7219611
    }
end

function Quest72196:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7219614"] = self.OnSubFailed7219614,
        ["7219606"] = self.OnSubFailed7219606,
        ["7219612"] = self.OnSubFailed7219612,
        ["7219607"] = self.OnSubFailed7219607,
        ["7219608"] = self.OnSubFailed7219608,
        ["7219613"] = self.OnSubFailed7219613,
        ["7219611"] = self.OnSubFailed7219611
    }
end

function Quest72196:Start()
    print("Start")
end

function Quest72196:OnDestroy()
    print("OnDestroy")
end

function Quest72196:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72196:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72196:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72196:OnSubStart7219614(arg1)
    print("OnSubStart7219614")
    self:CreateQuestNpc(arg1, npcs.Npc20291Data.id, 1)
end

function Quest72196:OnSubFinish7219614(arg1)
    print("OnSubFinish7219614")
    self:SafeDestroyQuestNpc(npcs.Npc20291Data.alias, 3)
end

function Quest72196:OnSubFailed7219614(arg1)
    print("OnSubFailed7219614")
end

function Quest72196:OnSubStart7219606(arg1)
    print("OnSubStart7219606")
end

function Quest72196:OnSubFinish7219606(arg1)
    print("OnSubFinish7219606")
end

function Quest72196:OnSubFailed7219606(arg1)
    print("OnSubFailed7219606")
end

function Quest72196:OnSubStart7219612(arg1)
    print("OnSubStart7219612")
end

function Quest72196:OnSubFinish7219612(arg1)
    print("OnSubFinish7219612")
end

function Quest72196:OnSubFailed7219612(arg1)
    print("OnSubFailed7219612")
end

function Quest72196:OnSubStart7219607(arg1)
    print("OnSubStart7219607")
end

function Quest72196:OnSubFinish7219607(arg1)
    print("OnSubFinish7219607")
end

function Quest72196:OnSubFailed7219607(arg1)
    print("OnSubFailed7219607")
end

function Quest72196:OnSubStart7219608(arg1)
    print("OnSubStart7219608")
end

function Quest72196:OnSubFinish7219608(arg1)
    print("OnSubFinish7219608")
end

function Quest72196:OnSubFailed7219608(arg1)
    print("OnSubFailed7219608")
end

function Quest72196:OnSubStart7219613(arg1)
    print("OnSubStart7219613")
end

function Quest72196:OnSubFinish7219613(arg1)
    print("OnSubFinish7219613")
end

function Quest72196:OnSubFailed7219613(arg1)
    print("OnSubFailed7219613")
end

function Quest72196:OnSubStart7219611(arg1)
    print("OnSubStart7219611")
end

function Quest72196:OnSubFinish7219611(arg1)
    print("OnSubFinish7219611")
end

function Quest72196:OnSubFailed7219611(arg1)
    print("OnSubFailed7219611")
end

return Quest72196
