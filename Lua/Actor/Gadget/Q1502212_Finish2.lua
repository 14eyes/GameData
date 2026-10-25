require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502212_Finish2 = class("Q1502212_Finish2", GadgetActorProxy)
Q1502212_Finish2.defaultAlias = "Q1502212_Finish2"
local Q15022ClientConfig = require("Quest/Client/Q15022ClientConfig")

local this
local subIDs = Q15022ClientConfig.SubIDs
local datas = Q15022ClientConfig.Datas
local npcs = Q15022ClientConfig.Npcs
local points = Q15022ClientConfig.Points

function Q1502212_Finish2:OnPostDataPrepare()
    print("Q1502212_Finish2 - OnPostDataPrepare")
    this = self
end

function Q1502212_Finish2:OnPostComponentPrepare()
    print("Q1502212_Finish2 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(7, 4, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15022)
end

function Q1502212_Finish2:TriggerIn()
    print("Q1502212_Finish2 - TriggerIn")
    actorUtils.FinishQuestID(false, 1502212)
    this:DestroySelf()
end

function Q1502212_Finish2:PreTriggerIn()
    print("Q1502212_Finish2 - PreTriggerIn")
end

function Q1502212_Finish2:LightUpTriggerIn()
    print("Q1502212_Finish2 - LightUpTriggerIn")
end

function Q1502212_Finish2:TriggerOut()
    print("Q1502212_Finish2 - TriggerOut")
end

return Q1502212_Finish2
