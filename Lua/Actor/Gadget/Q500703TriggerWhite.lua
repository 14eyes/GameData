require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500703TriggerWhite = class("Q500703TriggerWhite", GadgetActorProxy)
Q500703TriggerWhite.defaultAlias = "Q500703TriggerWhite"
local Q5007ClientConfig = require("Quest/Client/Q5007ClientConfig")

local this
local subIDs = Q5007ClientConfig.SubIDs
local datas = Q5007ClientConfig.Datas
local npcs = Q5007ClientConfig.Npcs
local points = Q5007ClientConfig.Points

function Q500703TriggerWhite:OnPostDataPrepare()
    print("Q500703TriggerWhite - OnPostDataPrepare")
    this = self
end

function Q500703TriggerWhite:OnPostComponentPrepare()
    print("Q500703TriggerWhite - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5007)
end

function Q500703TriggerWhite:TriggerIn()
    print("Q500703TriggerWhite - TriggerIn")
    actorMgr:GetActor("5007"):CreateQuestNpcById(500703, npcs.Npc1089.id, 1, false, 0)
    actorMgr:GetActor("5007"):RequestInteraction(npcs.Npc1089.alias, "", true)
    this:DestroySelf()
end

function Q500703TriggerWhite:PreTriggerIn()
    print("Q500703TriggerWhite - PreTriggerIn")
end

function Q500703TriggerWhite:LightUpTriggerIn()
    print("Q500703TriggerWhite - LightUpTriggerIn")
    actorMgr:GetActor("5007"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, nil, nil, nil, 0, true, false)
end

function Q500703TriggerWhite:TriggerOut()
    print("Q500703TriggerWhite - TriggerOut")
end

return Q500703TriggerWhite
