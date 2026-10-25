require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75266 = class("Quest75266", QuestActorProxy)
Quest75266.defaultAlias = "Quest75266"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75266:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75266:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7526601"] = self.OnSubStart7526601,
        ["7526602"] = self.OnSubStart7526602,
        ["7526603"] = self.OnSubStart7526603
    }
end

function Quest75266:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7526601"] = self.OnSubFinish7526601,
        ["7526602"] = self.OnSubFinish7526602,
        ["7526603"] = self.OnSubFinish7526603
    }
end

function Quest75266:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7526602"] = self.OnSubFailed7526602, ["7526603"] = self.OnSubFailed7526603}
end

function Quest75266:Start()
    print("Start")
end

function Quest75266:OnDestroy()
    print("OnDestroy")
end

function Quest75266:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75266:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75266:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7526603N2627Trigger")
    this:ActorDestroy("Q7526601Trigger", 75266)
    this:SafeDestroyQuestNpc(npcs.Npc2627.alias, 3)
    this:RemoveLocalGadget(73177013, "8")
    this:RemoveLocalGadget(73177013, "9")
    this:RemoveLocalGadget(73177011, "3")
    this:RemoveLocalGadget(73177011, "2")
    this:RemoveLocalGadget(73177010, "1")
    this:RemoveLocalGadget(73177012, "10")
    this:RecycleAllRes()
end

function Quest75266:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7526601Trigger", 75266)
end

function Quest75266:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7526601 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7526602 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest75266:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest75266:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
    if actorUtils.IsAvatarSit() == true then
        local avatarPos = actorUtils.GetAvatarPos()
        local n = arg1.x - avatarPos.x
        local v = arg1.y - avatarPos.y
        local n2 = arg1.z - avatarPos.z
        local n3 = math.sqrt(n ^ 2 + v ^ 2 + n2 ^ 2)
        print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- SitDistance \239\188\154" .. n3 .. "  maxR \239\188\154" .. arg2)
        if arg2 >= n3 then
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\233\128\154\232\191\135")
            if actorUtils.GetLocalAvatarSitEntityConfigId() == arg3 or arg3 == 0 then
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                if actorUtils.GetLocalAvatarConfigId() == arg4 or arg4 == 0 then
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4)
                    return true
                else
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4 .. "  \232\166\129\230\177\130\231\154\132\232\167\146\232\137\178ID\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarConfigId())
                    return false
                end
            else
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\228\184\141\231\148\168\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarSitEntityConfigId() .. "  \232\166\129\230\177\130\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                return false
            end
        else
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135")
            return false
        end
    end
end

function Quest75266:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75266:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75266:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = -1993.5, y = 173.21, z = 9630.9}, 30, 73177007, 10000133, 7526602) then
        actorUtils.FinishQuestWithParam({false}, {7526602})
    else
        if this:GetSubQuestState(7526602) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest75266:OnSubStart7526601(arg1)
    print("OnSubStart7526601")
    actorMgr:CreateActorWithPos("Q7526601Trigger", "Actor/Gadget/Q7526601Trigger", 70900002, 0, points.Q7526601Trigger.pos, points.Q7526601Trigger.rot, true, false, 3, nil, 0, 75266)
end

function Quest75266:OnSubFinish7526601(arg1)
    print("OnSubFinish7526601")
end

function Quest75266:OnSubStart7526602(arg1)
    print("OnSubStart7526602")
    this:RepeatSitCheck()
end

function Quest75266:OnSubFinish7526602(arg1)
    print("OnSubFinish7526602")
    this:ShowBlackScreenWithDialogText(0, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest75266:OnSubFailed7526602(arg1)
    print("OnSubFailed7526602")
    this:RecycleAllRes()
end

function Quest75266:OnSubStart7526603(arg1)
    print("OnSubStart7526603")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7526603, 0, 40, 0.5, npcs.Npc2627.id)
    this:CreateLocalGadget(73177013, "8", {x = -2005.211, y = 177.598, z = 9635.545}, {x = 0, y = 139.656, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "9", {x = -2004.668, y = 177.598, z = 9634.894}, {x = 0, y = 318.014, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "3", {x = -2005.648, y = 176.821, z = 9636.086}, {x = 0, y = 139.878, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = -2004.249, y = 176.821, z = 9634.354}, {x = 0, y = 318.267, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177010, "1", {x = -2004.944, y = 176.821, z = 9635.206}, {x = 0, y = 320.508, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177012, "10", {x = -2005.04, y = 177.598, z = 9635.119}, {x = 0, y = 280.89, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest75266:OnSubFinish7526603(arg1)
    print("OnSubFinish7526603")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc2627.alias)
        this:RecycleAllRes()
    end)
end

function Quest75266:OnSubFailed7526603(arg1)
    print("OnSubFailed7526603")
    this:RecycleAllRes()
end

return Quest75266
