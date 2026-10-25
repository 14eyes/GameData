require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7300102Trigger_Finish = class("Q7300102Trigger_Finish", GadgetActorProxy)
Q7300102Trigger_Finish.defaultAlias = "Q7300102Trigger_Finish"
local Q73001ClientConfig = require("Quest/Client/Q73001ClientConfig")

local this
local subIDs = Q73001ClientConfig.SubIDs
local npcs = Q73001ClientConfig.Npcs
local datas = Q73001ClientConfig.Datas

function Q7300102Trigger_Finish:OnPostDataPrepare()
    print("[MainId: 73001][Trigger: Q7300102Trigger_Finish] OnPostDataPrepare")
    this = self
end

function Q7300102Trigger_Finish:OnPostComponentPrepare()
    print("[MainId: 73001][Trigger: Q7300102Trigger_Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7300102Trigger_Finish:TriggerIn()
    print("[MainId: 73001][Trigger: Q7300102Trigger_Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 7300102)
    this:DestroySelf()
end

function Q7300102Trigger_Finish:TriggerOut()
    print("[MainId: 73001][Trigger: Q7300102Trigger_Finish] TriggerOut")
end

return Q7300102Trigger_Finish
