require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75024Trigger03 = class("Q75024Trigger03", GadgetActorProxy)
Q75024Trigger03.defaultAlias = "Q75024Trigger03"
local Q75024ClientConfig = require("Quest/Client/Q75024ClientConfig")

local this
local subIDs = Q75024ClientConfig.SubIDs
local datas = Q75024ClientConfig.Datas
local npcs = Q75024ClientConfig.Npcs
local points = Q75024ClientConfig.Points

function Q75024Trigger03:OnPostDataPrepare()
    print("Q75024Trigger03 - OnPostDataPrepare")
    this = self
end

function Q75024Trigger03:OnPostComponentPrepare()
    print("Q75024Trigger03 - OnPostComponentPrepare")
    this:AddComponentTrigger(4.0704665, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75024)
end

function Q75024Trigger03:TriggerIn()
    print("Q75024Trigger03 - TriggerIn")
    actorMgr:GetActor("75024"):RequestInteraction(npcs.Npc6174.alias, "", true)
end

function Q75024Trigger03:PreTriggerIn()
    print("Q75024Trigger03 - PreTriggerIn")
end

function Q75024Trigger03:LightUpTriggerIn()
    print("Q75024Trigger03 - LightUpTriggerIn")
end

function Q75024Trigger03:TriggerOut()
    print("Q75024Trigger03 - TriggerOut")
end

return Q75024Trigger03
