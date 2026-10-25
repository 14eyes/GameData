require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q15023DungeonTarget01 = class("Q15023DungeonTarget01", GadgetActorProxy)
Q15023DungeonTarget01.defaultAlias = "Q15023DungeonTarget01"
local Q15023ClientConfig = require("Quest/Client/Q15023ClientConfig")

local this
local subIDs = Q15023ClientConfig.SubIDs
local npcs = Q15023ClientConfig.Npcs
local points = Q15023ClientConfig.Points

function Q15023DungeonTarget01:OnPostDataPrepare()
    print("Q15023DungeonTarget01 - OnPostDataPrepare")
    this = self
end

function Q15023DungeonTarget01:OnPostComponentPrepare()
    print("Q15023DungeonTarget01 - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15023)
end

function Q15023DungeonTarget01:TriggerIn()
    print("Q15023DungeonTarget01 - TriggerIn")
    actorUtils.FinishQuestID(false, 1502315)
    this:DestroySelf()
end

function Q15023DungeonTarget01:PreTriggerIn()
    print("Q15023DungeonTarget01 - PreTriggerIn")
end

function Q15023DungeonTarget01:LightUpTriggerIn()
    print("Q15023DungeonTarget01 - LightUpTriggerIn")
end

function Q15023DungeonTarget01:TriggerOut()
    print("Q15023DungeonTarget01 - TriggerOut")
end

return Q15023DungeonTarget01
