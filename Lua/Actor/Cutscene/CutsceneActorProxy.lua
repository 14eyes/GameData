require("Actor/ActorCommon")
local SubGlobalActorProxy = require("Actor/SubGlobal/SubGlobalActorProxy")

local CutsceneActorProxy = class("CutsceneActorProxy", SubGlobalActorProxy)
CutsceneActorProxy.actorType = ActorType.CUTSCENE_ACTOR
CutsceneActorProxy.defaultAlias = "Cutscene"
local super

function CutsceneActorProxy:OnPreInit()
    super = self.__super
    super:OnPreInit()
end

function CutsceneActorProxy:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.CUTSCENE_ACTOR, arg1, self.metaPath)
    return actor
end

function CutsceneActorProxy:Start() end
return CutsceneActorProxy
