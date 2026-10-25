local SubGlobalActorProxy = require("Actor/SubGlobal/SubGlobalActorProxy")

local InteractionActorProxy = class("InteractionActorProxy", SubGlobalActorProxy)
InteractionActorProxy.actorType = ActorType.INTERACTION_ACTOR
InteractionActorProxy.defaultAlias = "Interaction"
local super

function InteractionActorProxy:OnPreInit()
    super = self.__super
    super:OnPreInit()
end

function InteractionActorProxy:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.INTERACTION_ACTOR, arg1, self.metaPath)
    return actor
end

function InteractionActorProxy:OnInterStart(arg1)
    print("inter start cnt" .. tostring(arg1))
end

function InteractionActorProxy:OnInterFinish(arg1)
    print("inter finish cnt" .. tostring(arg1))
end

function InteractionActorProxy:Register()
    self.uActor:RegisterStartInterCallback(self.OnInterStart)
    self.uActor:RegisterFinishInterCallback(self.OnInterFinish)
end

function InteractionActorProxy:Unregister()
    self.uActor:UnregisterStartInterCallback(self.OnInterStart)
    self.uActor:UnregisterStartInterCallback(self.OnInterFinish)
end

function InteractionActorProxy:Start() end
return InteractionActorProxy
