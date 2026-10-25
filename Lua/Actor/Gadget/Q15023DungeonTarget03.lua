require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q15023DungeonTarget03 = class("Q15023DungeonTarget03", GadgetActorProxy)
Q15023DungeonTarget03.defaultAlias = "Q15023DungeonTarget03"
local Q15023ClientConfig = require("Quest/Client/Q15023ClientConfig")

local this
local subIDs = Q15023ClientConfig.SubIDs
local npcs = Q15023ClientConfig.Npcs
local points = Q15023ClientConfig.Points

function Q15023DungeonTarget03:OnPostDataPrepare()
    print("Q15023DungeonTarget03 - OnPostDataPrepare")
    this = self
end

function Q15023DungeonTarget03:OnPostComponentPrepare()
    print("Q15023DungeonTarget03 - OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15023)
end

function Q15023DungeonTarget03:TriggerIn()
    print("Q15023DungeonTarget03 - TriggerIn")
    actorUtils.FinishQuestID(false, 1502319)
    this:DestroySelf()
end

function Q15023DungeonTarget03:PreTriggerIn()
    print("Q15023DungeonTarget03 - PreTriggerIn")
end

function Q15023DungeonTarget03:LightUpTriggerIn()
    print("Q15023DungeonTarget03 - LightUpTriggerIn")
end

function Q15023DungeonTarget03:TriggerOut()
    print("Q15023DungeonTarget03 - TriggerOut")
end

return Q15023DungeonTarget03
